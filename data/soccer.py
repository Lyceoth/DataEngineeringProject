#!/bin/bash
#"true" '''\' #allow running from vs code, cf. http://rosettacode.org/wiki/Multiline_shebang#Python
#CUR_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
#CUR_FILE=`basename "$0"`
#CMD="docker run -it --rm -v \"$PWD/data:/data\" -v \"$CUR_DIR:/src\" --name=pyspark jupyter/pyspark-notebook spark-submit \"/src/$CUR_FILE\" | grep -v INFO"
#echo "Running: $CMD" | sed "s|$PWD|\$PWD|g"
#eval "$CMD"
#exit 0
#'''

# BEGIN-SNIPPET
import re  # https://docs.python.org/3/library/re.html
from pyspark.sql import SparkSession

# Initialization 

sc = SparkSession.builder.appName('pyspark_soccer_app') \
    .master("local[*]").getOrCreate().sparkContext              # Create Spark Session Name: "pyspark_soccer_app"

# Create an RDD from a text file
sentences = sc.textFile("/data/wm.txt")                         # Creating Sentences from the text file "wm.txt" File contains comments of fifa world cup final 2014 (Germany vs. Argentina)

# Run flat map, map, and reduceByKey
words = sentences.flatMap(lambda sentence: sentence.split(" ")) # Create single words out of the existing sentences
wordMap = words.map(lambda word: (word, 1))                     
reduceByKey = wordMap.reduceByKey(lambda a, b: a+b)

# Print the individual results
print(f"sentences: { sentences.collect() }")
print(f"words: { words.collect() }")
print(f"wordMap: { wordMap.collect() }")
print(f"reduceByKey: { reduceByKey.collect() }")                # Show words within the docuent and the number they appear
