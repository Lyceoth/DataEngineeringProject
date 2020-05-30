#!/bin/bash
"true" '''\' #allow running from vs code, cf. http://rosettacode.org/wiki/Multiline_shebang#Python
CUR_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CUR_FILE=`basename "$0"`
CMD="docker run -it --rm -v \"$PWD/data:/data\" -v \"$CUR_DIR:/src\" --name=pyspark jupyter/pyspark-notebook spark-submit \"/src/$CUR_FILE\" | grep -v INFO"
echo "Running: $CMD" | sed "s|$PWD|\$PWD|g"
eval "$CMD"
exit 0
'''

# BEGIN-SNIPPET
from pyspark import SparkContext, SQLContext

# Create local Spark Context
spark = SparkContext("local[*]", "SQL_Soccer")
sc = SQLContext(spark)

# The following creates a DataFrame based on the content of a database table
jdbcDF = spark.read
  .format("jdbc")
  .option("jdbc:mysql://10.107.120.235:3306/SOCCERSTAT", "jdbc:mysql:dbserver")
  .option("dbtable", "Player")
  .option("user", "root")
  .option("password", "mysecretpw")
  .load()

# Displays the content of the DataFrame to stdout
df.show()

# Print the schema in a tree format
df.printSchema()