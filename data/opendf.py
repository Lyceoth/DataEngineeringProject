#!/bin/bash
"true" '''\' #allow running from vs code, cf. http://rosettacode.org/wiki/Multiline_shebang#Python
CUR_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CUR_FILE=`basename "$0"`
CMD="docker run -it --rm -v \"$PWD/data:/data\" -v \"$CUR_DIR:/src\" --name=pyspark jupyter/pyspark-notebook spark-submit \"/src/$CUR_FILE\" | grep -v INFO"
echo "Running: $CMD" | sed "s|$PWD|\$PWD|g"
eval "$CMD"
exit 0
'''

# Download JDBC dirver for MySQL
# wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.45.tar.gz

# BEGIN-SNIPPET
import os
from pyspark import SparkContext, SQLContext
# Specify where driver is
os.environ['PYSPARK_SUBMIT_ARGS'] = '--jars /home/bigdata/soccerapp/mysql-connector-java-5.1.45/mysql-connector-java-5.1.45-bin.jar  pyspark-shell'

# Create local Spark Context
spark = SparkContext("local[*]", "mysql_data")
sc = SQLContext(spark)
# Alternative:
#sc = SparkContext(appName="mysql_data")
#sqlContext = SQLContext(sc)

#Provide your Spark-master node below
hostname = "10.100.157.209" 
dbname = "SOCCERSTAT"
jdbcPort = 3306
username = "root"
password = "mysecretpw"
jdbc_url = "jdbc:mysql://{0}:{1}/{2}?user={3}&password={4}".format(hostname,jdbcPort, dbname,username,password)

# The following creates a DataFrame based on the content of a JSON file
query = "(select * from Player) t1_alias"
df = sqlContext.read.format('jdbc').options(driver = 'com.mysql.jdbc.Driver',url=jdbc_url, dbtable=query ).load()

#jdbcDF = spark.read.format("jdbc") \
#    .option("", "jdbc:postgresql:dbserver") \
#    .option("dbtable", "SOCCERSTAT") \
#    .option("user", "root").option("password", "mysecretpw") \
#    .load()

# Displays the content of the DataFrame to stdout
df.show()

# Print the schema in a tree format
df.printSchema()

# Terminal input:
# docker run -it --rm -v "$PWD/data:/data" --name=pyspark jupyter/pyspark-notebook spark-submit /data/opendf.py

# docker run -it --rm -v "$PWD/data:/data" --name=pyspark jupyter/pyspark-notebook spark-submit --jars /home/bigdata/soccerapp/mysql-connector-java-5.1.45/mysql-connector-java-5.1.45-bin.jar opendf.py

# /usr/local/bin/spark-submit --jars /home/bigdata/soccerapp/mysql-connector-java-5.1.45/mysql-connector-java-5.1.45-bin.jar opendf.py
