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
soccer_df = mySqlContext.read.format("jdbc").options(
    url="jdbc:mysql://localhost:3306/SOCCERSTAT",
    driver = "com.mysql.jdbc.Driver",
    dbtable = "Player",
    user="root",
    password="mysecretpw").load()

# Displays the content of the DataFrame to stdout
soccer_df.show()

# Print the schema in a tree format
soccer_df.printSchema()