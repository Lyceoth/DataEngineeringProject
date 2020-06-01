#!/usr/bin/python3

from argparse import ArgumentParser
import requests
import time
import random
import sys

player_dist = {
    10243: {"chance": 4, "count": 0}, # Thomas Mueller
    6556: {"chance": 3, "count": 0},  # Manuel Neuer
    9039: {"chance": 2, "count": 0},  # Robert Lewandowski
    5145: {"chance": 1, "count": 0}   #Jonas Hector
}
chances_list = []
for p in player_dist.keys():
    chances_list.extend([p] * player_dist[p]["chance"])


def rand_playerid():
    '''Get a random playerid according to the chances from player_dist'''
    return random.choice(chances_list)
    

if __name__ == "__main__":
    '''Sends multiple requests to the minikube public ip. If not specified as cmd-arg, the default amount is 40.
       The requested playerid is randomized chosen based on chance for each player.'''

    parser = ArgumentParser()
    parser.add_argument("amount", nargs="?", default=40)
    n = int(parser.parse_args().amount)

    start = time.time()
    print("Sending requests..")
    for i in range(1, n):
        time.sleep(0.05)
        playerid = rand_playerid()
        url = 'http://10.0.2.15/person/{0}'.format(playerid)
        response = requests.get(url)
        if response.status_code == 200:
            player_dist[playerid]["count"] = player_dist[playerid]["count"] + 1
        else:
            print("Request for {0} failed with status code {1}.\nAborting".format(url, response.status_code))
            sys.exit(-1)
    end = time.time()
    print("Performed {0} requests in {1:.2f} seconds. Statistics are:".format(n, (end - start)))
    print(player_dist)
