# set the default region for the AWS CLI
export AWS_DEFAULT_REGION=$(curl --retry 5 --silent --connect-timeout 2 http://169.254.169.254/latest/dynamic/instance-identity/document | grep region | awk -F\" '{print $4}')
export JAVA_HOME=/etc/alternatives/jre

export SPARK_HOME="/usr/lib/spark"
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH
export PS1="\[\e[0;35m\]\u@\h:\[\e[0m\]\[\e[0;32m\]\w \$ \[\e[0m\]"

export PYSPARK_SUBMIT_ARGS='--master yarn
--deploy-mode client
--executor-memory 11g
--executor-cores 3
--conf spark.driver.memory=48g
--conf spark.driver.cores=12
--conf spark.driver.maxResultSize=2g
--conf spark.broadcast.blockSize=512m
--conf syarn.yarn.driver.memoryOverhead=2048
--conf spark.yarn.executor.memoryOverhead=1024
--conf spark.shuffle.spill=true
--conf spark.default.parallelism=300
--conf spark.memory.storageFraction=0.5
--conf spark.sql.shuffle.partitions=5000
--conf spark.serializer=org.apache.spark.serializer.KryoSerializer
--driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties'

alias 'll=ls -lh'
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
alias 'gd=git diff'

