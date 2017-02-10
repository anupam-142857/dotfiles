# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# set the default region for the AWS CLI
export AWS_DEFAULT_REGION=$(curl --retry 5 --silent --connect-timeout 2 http://169.254.169.254/latest/dynamic/instance-identity/document | grep region | awk -F\" '{print $4}')
export JAVA_HOME=/etc/alternatives/jre

export SPARK_HOME="/usr/lib/spark"
export PYSPARK_SUBMIT_ARGS='--master yarn-client --conf spark.serializer=org.apache.spark.serializer.KryoSerializer --num-executors 34 --executor-memory 4g --executor-cores 2 --driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties --conf spark.default.parallelism=42 --conf spark.driver.memory=3g --conf spark.driver.maxResultSize=2g --conf spark.shuffle.spill=true  --conf spark.sql.autoBroadcastJoinThreshold=209715200 --conf spark.sql.shuffle.partitions=1000 --conf spark.yarn.executor.memoryOverhead=1536'
alias sparkStream='IPYTHON=1 /usr/lib/spark/bin/./pyspark --master yarn-client  --packages org.apache.spark:spark-streaming-kafka_2.10:1.6.0 --conf spark.serializer=org.apache.spark.serializer.KryoSerializer  --num-executors 48 --executor-memory 4g --executor-cores 2 --driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties --conf spark.default.parallelism=42 --conf spark.driver.memory=3g --conf spark.driver.maxResultSize=2g --conf spark.shuffle.spill=true  --conf spark.sql.autoBroadcastJoinThreshold=209715200 --conf spark.sql.shuffle.partitions=1000 --conf spark.yarn.executor.memoryOverhead=1536'

alias notebook='ipython notebook --profile=pyspark'
alias 'll=ls -l'
alias 'c=clear'
alias 'x=exit'
alias '..=cd ..'

alias 'hc=hdfs dfs -cat'
alias 'hco=hdfs dfs -count -h'
alias 'hl=hdfs dfs -ls -h'
alias 'hp=hdfs dfs -put'
alias 'hg=hdfs dfs -get'
alias 'hgm=hdfs dfs -getmerge'

alias 'gb=git branch'
alias 'gs=git status'
alias 'gf=git fetch'
alias 'gp=git pull'
alias 'gco=git checkout'
alias 'ga=git add'
alias 'gc=git commit'

export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH

export PS1="\[\e[0;35m\]\u@\h:\[\e[0m\]\[\e[0;32m\]\w \$ \[\e[0m\]"

