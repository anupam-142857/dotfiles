bind 'set completion-ignore-case on'
#export PS1="\[\e[0;32m\]\W>\[\e[m\]"
export PS1="\[\e[0;35m\]\u@\h:\e[0;32m\]\W\$ \[\e[0m\]"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/bin
#export JAVA_HOME=/Library/Java/Home
export PATH=/Users/Anupam/pig-0.14/bin:/Users/Anupam/jython2.5.0:$JAVA_HOME/bin:$PATH

alias 'll=ls -l'
alias 'c=clear'
alias 'x=exit'
alias '..=cd ..'

alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"


# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
