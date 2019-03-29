export PS1="\[\e[0;35m\]\u@\h:\[\e[0m\]\[\e[0;32m\]\w \$ \[\e[0m\]"

export SPARK_HOME="/usr/lib/spark"
export PYSPARK_PYTHON=$(which python3)
export PYSPARK_DRIVER_PYTHON=$(which python3)

# export PYSPARK_SUBMIT_ARGS='--master yarn
# --deploy-mode client
# --driver-memory 13g
# --executor-memory 4g
# --executor-cores 1
# --conf spark.driver.cores=1
# --conf spark.serializer=org.apache.spark.serializer.KryoSerializer
# --conf spark.driver.maxResultSize=2g
# --conf spark.shuffle.spill=true
# --conf spark.driver.memoryOverhead=2048
# --conf spark.executor.memoryOverhead=1024
# --driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties pyspark-shell'

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
