#!/bin/bash
"true" '''\' #allow running from vs code, cf. http://rosettacode.org/wiki/Multiline_shebang#Python
CUR_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CUR_FILE=`basename "$0"`
CMD="docker run -it --rm -v \"$PWD/data:/data\" -v \"$CUR_DIR:/src\" --name=pyspark jupyter/pyspark-notebook spark-submit \"/src/$CUR_FILE\" | grep -v INFO"
echo "Running: $CMD" | sed "s|$PWD|\$PWD|g"
eval "$CMD"
exit 0
'''

# Initialize
import re  # https://docs.python.org/3/library/re.html
from pyspark.sql import Row, SQLContext
from pyspark import SparkContext
sc = SparkContext("local[*]", "SQL_Example")
sqlContext = SQLContext(sc)

# Load data to RDD and filter lines containing missions
jdbcDF = spark.read.format("jdbc") \
    .option("cluster-url/mysql-service", "jdbc:mysql:dbserver") \
    .option("dbtable", "schema.tablename") \
    .option("user", "username").option("password", "password") \
    .load()


logLines = sc.textFile("/data/NASA_access_log_Jul95.gz")
pattern = re.compile('.*/shuttle/missions/(sts-[0-9]+)/.*')
filtered = logLines.filter(lambda s: pattern.match(s))
missions = filtered.map(lambda s: Row(mission=pattern.match(s).group(1), count=1))
missionsDataframe = sqlContext.createDataFrame(missions)

# BEGIN-SNIPPET

missionsDataframe \
    .groupBy('bmi') \
    .count() \
    .orderBy('count', ascending=False) \
    .show()