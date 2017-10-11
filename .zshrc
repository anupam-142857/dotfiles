# Path to your oh-my-zsh installation.
export ZSH=/home/hadoop/.oh-my-zsh
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export AWS_DEFAULT_REGION=$(curl --retry 5 --silent --connect-timeout 2 http://169.254.169.254/latest/dynamic/instance-identity/document | grep region | awk -F\" '{print $4}')
export JAVA_HOME=/etc/alternatives/jre

export EDITOR=vim
export VISUAL=vim

export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.6-src.zip:$PYTHONPATH

export SPARK_HOME="/usr/lib/spark"
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

powerline-daemon -q
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export TERM="xterm-256color"
POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv background_jobs time)
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

plugins=()

source $ZSH/oh-my-zsh.sh
source ~/.fonts/*.sh

alias 'll=ls -lh'
alias 'c=clear'
alias 'x=exit'
alias '..=cd ..'

alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"

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

# Numeric keypad for Das Keyboard
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[On" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

