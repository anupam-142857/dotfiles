# set the default region for the AWS CLI
export AWS_DEFAULT_REGION=$(curl --retry 5 --silent --connect-timeout 2 http://169.254.169.254/latest/dynamic/instance-identity/document | grep region | awk -F\" '{print $4}')
export JAVA_HOME=/etc/alternatives/jre

export SPARK_HOME="/usr/lib/spark"
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.6-src.zip:$PYTHONPATH
export PS1="\[\e[0;35m\]\u@\h:\[\e[0m\]\[\e[0;32m\]\w \$ \[\e[0m\]"

export PYSPARK_SUBMIT_ARGS='--master yarn
--deploy-mode client
--driver-memory 13g
--executor-memory 4g
--executor-cores 1
--conf spark.driver.cores=3
--conf spark.serializer=org.apache.spark.serializer.KryoSerializer
--conf spark.default.parallelism=6
--conf spark.driver.maxResultSize=2g
--conf spark.shuffle.spill=true
--conf spark.yarn.driver.memoryOverhead=2048
--conf spark.yarn.executor.memoryOverhead=1024
--driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties pyspark-shell'

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

