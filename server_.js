const dns = require("dns").promises;
const os = require("os");
const express = require("express");
const { addAsync } = require("@awaitjs/express");
const app = addAsync(express());
const mysqlx = require("@mysql/xdevapi");
const MemcachePlus = require("memcache-plus");

//Connect to the memcached instances
let memcached = null;
let memcachedServers = [];

const dbConfig = {
   user: "root",
   password: "mysecretpw",
   host: "my-soccerapp-mysql-service", //changed
   port: 33060,
   schema: "SOCCERSTAT", //changed
};

async function getMemcachedServersFromDns() {
   let queryResult = await dns.lookup("my-memcached-service", { all: true });
   let servers = queryResult.map((el) => el.address + ":11211");

   //Only create a new object if the server list has changed
   if (memcachedServers.sort().toString() !== servers.sort().toString()) {
      console.log("Updated memcached server list to ", servers);
      memcachedServers = servers;
      //Disconnect an existing client
      if (memcached) await memcached.disconnect();
      memcached = new MemcachePlus(memcachedServers);
   }
}

//Initially try to connect to the memcached servers, then each 5s update the list
getMemcachedServersFromDns();
setInterval(() => getMemcachedServersFromDns(), 5000);

//Get data from cache if a cache exists yet 																	// to be changed
async function getFromCache(key) {
   if (!memcached) {
      console.log(`No memcached instance available, memcachedServers = ${memcachedServers}`);
      return null;
   }
   return await memcached.get(key);
}

//Get data from database
async function getFromDatabase(userid) {
   let query = 'SELECT * from Player WHERE id = "' + userid + '" LIMIT 1';
   let session = await mysqlx.getSession(dbConfig);

   console.log("Executing query " + query);
   let res = await session.sql(query).execute();
   let row = res.fetchAll();

   if (row) {
      console.log("Query result = ", row);
      return row[0];
   } else {
      return null;
   }
}

// changed
function send_response(response, data, cache_msg) {
   response.send(
      `<!DOCTYPE html>
   <head>
    <meta charset="utf-8" />
    <title>World Best Soccer App</title>
    <link rel="shortcut icon"
        href="https://raw.githubusercontent.com/Lyceoth/DataEngineeringProject/master/assets/football.png" />
    <style>
        h1 {
            font: bold Verdana, Arial, sans-serif;
            font-size: 2em;
            margin: 4%;
            color: white;
            text-shadow: 0.05em 0.05em #333
        }
        body {
            width: 100%;
            height: 100%;
            background-color: grey;
            color: white;
            text-shadow: 0.05em 0.05em #333;
            font-size: 1.2em;
            text-align:center;
        }
        button {
        background-color: rgb(75, 75, 75);
        border-radius: 0.4em;
        border: none;
        color: white;
        text-shadow: 0.05em 0.05em #333;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 1.2em;
        width: 10em;
        cursor: pointer;
        margin: 4% 2%;
        box-shadow: 0 0.1em #333;
        }
        button:hover {
            background-color: lightgray;
            color: rgb(41, 41, 41);
            text-shadow: 0.05em 0.05em rgb(204, 204, 204);
        }
        button:active {
            box-shadow: 0 0 #999;
            transform: translateY(0.1em);
        }
        #data {
            width: 20em;
            margin:auto;
            text-align:left;
        }
    </style>
   </head>
   <body>
    <h1>Soccer-Star: ${data[2]}</h1>
    <ul id="data">
        <li>Host: ${os.hostname()}</li>
        <li>Date: ${new Date()}</li>
        <li>Memcached Servers: ${memcachedServers}</li>
        <li>Cache Status: ${cache_msg}</li>
        <br>
        <li>Player Stats</li>
        <li>ID: ${data[0]}</li>
        <li>API ID: ${data[1]}</li>
        <li>NAME: ${data[2]}</li>
        <li>FIFA ID: ${data[3]}</li>
        <li>BIRTHDAY: ${data[4]}</li>
        <li>HEIGHT: ${data[5]}</li>
        <li>WIDTH: ${data[6]}</li>
        <br>
        <li>Total Data: ${data}</li>
    </ul>
    <button>
        Previous
    </button>
    <button>
        Next
    </button>
   </body>
   </html>`
   );
}

app.get("/", async function (request, response) {
   response.writeHead(302, { Location: "person/7518" });
   response.end();
});

app.getAsync("/person/:id", async function (request, response) {
   let userid = request.params["id"];
   let key = "user_" + userid;
   let cachedata = await getFromCache(key);

   if (cachedata) {
      console.log(`Cache hit for key=${key}, cachedata = ${cachedata}`);
      send_response(response, cachedata, "Cache Hit");
   } else {
      console.log(`Cache miss for key=${key}, querying database`);
      let data = await getFromDatabase(userid);
      if (data) {
         console.log(`Got data=${data}, storing in cache`);
         if (memcached) await memcached.set(key, data, 30 /* seconds */);
         send_response(response, data, "Cache Miss");
      } else {
         send_response(response, "No data found", "No data found");
      }
   }
});

app.set("port", process.env.PORT || 8080);

app.listen(app.get("port"), function () {
   console.log("Node app is running at localhost:" + app.get("port"));
});
