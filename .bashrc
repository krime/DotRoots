#!/bin/bash
#
# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# Put your fun stuff here.

ulimit -c unlimited

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vim='vi'
alias grep='grep -n --color'
alias ls='ls -hF --color=tty'
alias iconvcn='iconv -f gbk -t utf-8'
alias yum='yum --noplugins'

alias jetty='java -jar $JETTY_HOME/start.jar'
alias jad='jad -s java'

eval "$(dircolors -b ~/.dircolors)"

[ -f ~/.common/.shell ] && source ~/.common/.shell
#[ -f ~/.tmux/scripts/tmux-session ] && source ~/.tmux/scripts/tmux-session

# Default Compiling & Linking Paths
#export GNU_COMPILER_PATH=/usr/lib/gcc/x86_64-redhat-linux/4.8.3
#export CPATH=$GNU_COMPILER_PATH/include:/usr/local/include:/usr/include
#export LD_LIBRARY_PATH=$GNU_COMPILER_PATH:/usr/lib64:/lib64:/usr/lib:/lib
#export LIBRARY_PATH=$GNU_COMPILER_PATH:/usr/lib64:/lib64:/usr/lib:/lib

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[0m\E[5m\E[38;5;124m'              # begin blinking
export LESS_TERMCAP_md=$'\E[0m\E[1m\E[38;5;033m'              # begin bold
export LESS_TERMCAP_me=$'\E[0m\E[1m\E[38;5;226m'              # end mode
#export LESS_TERMCAP_se=$'\E[0m'                               # end standout-mode
export LESS_TERMCAP_se=$'\E[0m\E[1m\E[38;5;15m'               # end standout-mode
#export LESS_TERMCAP_so=$'\E[0m\E[1m\E[48;5;033m\E[38;5;226m'  # begin standout-mode - info box
export LESS_TERMCAP_so=$'\E[0m\E[1m\E[48;5;033m\E[38;5;226m'  # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m\E[1m\E[38;5;226m'              # end underline
export LESS_TERMCAP_us=$'\E[0m\E[4m\E[38;5;063m'              # begin underline
if [ -f $HOME/.common/.lessex ]; then
  export LESSOPEN="| /usr/bin/source-highlight -n -t2 --failsafe --infer-lang -f esc --style-file=$HOME/.common/.lessex -i %s"
else
  export LESSOPEN="| /usr/bin/source-highlight -n -t2 --failsafe --infer-lang -f esc -i %s"
fi
#export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'
export LESS=' -R -M --shift 5 '
#export LESSCHARSET=iso8859
export LESSCHARSET=utf-8
#export LESS=' -R '
export GROFF_NO_SGR=1

# Grep colors syntax:
# fn: file name
# ln: line number
# bn: byte offset number
# mt: matched text
# ms: matched text in selected line
# mc: matched text in context line
# se: separated element
export GREP_COLORS='fn=01;38;5;3:ln=01;38;5;110:bn=01;38;5;111:mt=01;38;5;2:ms=01;38;5;10:mc=01;38;5;28:se=00;38;5;7'

export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8
export TIME=$(cat <<- __EOF__

  General Infomations
  ======================
  Command:  "%C"
  ExitNum:  %x

  Time Resources
  ======================
  Elapsed:  %es
  CPUUser:  %Ss
  CPUKern:  %Us
  CPUUsed:  %P

  I/O Resources
  ======================
  MajFals:  %F	faults
  MinFals:  %R	faults
  VoCtSwt:  %w	switches
  IvCtSwt:  %c	switches
  SwapNum:  %W	swaps
  SysfIns:  %I	inputs
  SysfOts:  %O	outputs
  SockRev:  %r	messages
  SockSen:  %s	messages
  SigDelv:  %k	signals

  Memory Resources
  ======================
  AvgText:  %Xk
  AvgData:  %Dk
  AvgStak:  %pk
  AvgMems:  %Kk
  MaxResd:  %Mk
  AvgResd:  %tk
  SysPgSz:  %Zb
__EOF__
)

export TERM=xterm-256color
if ( declare -f lastexit &> /dev/null ); then
  PS1='\[\n\e[01;37m\]\u@\[\e[4m\e[38;5;246m\]\h>\[\e[0m\e[01;33m\][ \W ] \[\e[0m\e[1;37m\]\n\$ '
else
  PS1='\[\n\e[01;37m\]\u@\[\e[4m\e[38;5;246m\]\h>\[\e[0m\e[01;33m\][ \W ] \[\e[01;38;5;87m\]$(lastexit $?)\[\e[0m\e[1;37m\]\n\$ '
fi
export PS1

# History Configuration
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
export HISTTIMEFORMAT='%F %T '
export HISTSIZE=100000
export HISTFILESIZE=200000
export HISTCONTROL=ignoredups:erasedups
export HISTWRONG='jbos:fidn:grpe:ffg'
export HISTIGNORE=$HISTWRONG:'pwd:sl:ls:ps:cd:fg*:exit:poweroff:reboot:date:w:who:tree:pstree:whoami:id:df:ifconfig:netstat:fortune:history:jobs'

export EDITOR='/usr/bin/vim'

if [ -e /apps/docker ]; then
  export DOCKER_HOME=/apps/docker
  export PATH=$DOCKER_HOME/bin:$PATH
fi

# export GASNET_SPAWNFN=S
# export GASNET_SSH_SERVERS="c1 c2"

# Perl Module Paths
if [ -e /apps/perl5 ]; then
  export PERL_HOME=/apps/perl5
  export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:$PERL_HOME";
  export PERL_MB_OPT="--install_base $PERL_HOME"
  export PERL_MM_OPT="INSTALL_BASE=$PERL_HOME"
  export PERL5LIB="$PERL_HOME/lib/perl5/x86_64-linux:$PERL_HOME/lib/perl5:$PERL5LIB"
  export PERLLIB=$PERL5LIB
  export PATH="$PERL_HOME/bin:$PATH"
  export PERLBREW_ROOT=/apps/perlbrew
  [ -f $PERLBREW_ROOT/etc/bashrc ] && source $PERLBREW_ROOT/etc/bashrc
fi

export JAVA_HOME=/usr/java/latest

# ANT
if [ -e /apps/ant ]; then
  export ANT_HOME=/apps/ant
  export ANT_OPTS=
  export PATH=$ANT_HOME/bin:$PATH
fi

# MAVEN
if [ -e /apps/maven ]; then
  export M2_HOME=/apps/maven
  export M2=$M2_HOME/bin
  export MAVEN_OPTS='-Xms256m -Xmx512m -Xss4m'
  export PATH=$M2:$PATH
fi

# JETTY
if [ -e /apps/jetty ]; then
  export JETTY_HOME=/apps/jetty
  export PATH=$JETTY_HOME/bin:$PATH
fi

# TAG UTILITY
if [ -e /apps/tags ]; then
  export CTAGS_HOME=/apps/ctags
  export GTAGS_HOME=/apps/global
  export CSCOPE_HOME=/apps/cscope
  export IDUTILS_HOME=/apps/idutils
  export PATH=$CTAGS_HOME/bin:$GTAGS_HOME/bin:$CSCOPE_HOME/bin:$IDUTILS_HOME/bin:$PATH
fi

# NODEJS
if [ -e /apps/node ]; then
  export NODE_HOME=/apps/node
  export PATH=$NODE_HOME/bin:$PATH
fi

# NGINX
if [ -e /apps/nginx ]; then
  export NGINX_HOME=/apps/nginx
  export PATH=$NGINX_HOME/sbin:$PATH
fi

# Google Performance Tools
if [ -e /apps/local ]; then
  export COMMON_HOME=/apps/local
  export CPATH=$COMMON_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$COMMON_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$COMMON_HOME/lib:$LIBRARY_PATH
  export PKG_CONFIG_PATH=$COMMON_HOME/lib/pkgconfig:$PKG_CONFIG_PATH
  export PATH=$COMMON_HOME/bin:$PATH
  ## C,CC,GCC
  export C_INCLUDE_PATH=$CPATH
  ## MANPAGE
  export MANPATH=$MANPATH:/apps/local/share/man
fi

# Redis
if [ -e /apps/redis ]; then
  export REDIS_HOME=/apps/redis
  export PATH=$REDIS_HOME/bin:$PATH
fi

# Scons
if [ -e /apps/scons ]; then
  export SCONS_HOME=/apps/scons
  export PATH=$SCONS_HOME/bin:$PATH
fi

# Apache Portable Runtime
if [ -e /apps/apr ]; then
  export APR_HOME=/apps/apr
  export PATH=$APR_HOME/bin:$PATH
  export CPATH=$APR_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$APR_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$APR_HOME/lib:$LIBRARY_PATH
  export PKG_CONFIG_PATH=$APR_HOME/lib/pkgconfig/:$PKG_CONFIG_PATH
fi

# Serf
if [ -e /apps/serf ]; then
  export SERF_HOME=/apps/serf
  export CPATH=$SERF_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$SERF_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$SERF_HOME/lib:$LIBRARY_PATH
fi

# Neon
if [ -e /apps/neon ]; then
  export NEON_HOME=/apps/neon
  export PATH=$NEON_HOME/bin:$PATH
  export CPATH=$NEON_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$NEON_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$NEON_HOME/lib:$LIBRARY_PATH
  export PKG_CONFIG_PATH=$NEON_HOME/lib/pkgconfig/:$PKG_CONFIG_PATH
fi

# MongoDB
if [ -e /apps/mongodb ]; then
  export MONGO_HOME=/apps/mongodb
  export PATH=$MONGO_HOME/bin:$PATH
fi

# HTTPD
if [ -e /apps/httpd ]; then
  export HTTPD_HOME=/apps/httpd
  export PATH=$HTTPD_HOME/bin:$PATH
fi

# TagsUtils
if [ -e /apps/tagutils ]; then
  export TAGS_HOME=/apps/tagsutils
  export PATH=$TAGS_HOME/bin:$PATH
fi

# Gradle
if [ -e /apps/gradle ]; then
  export GRADLE_HOME=/apps/gradle
  export PATH=$GRADLE_HOME/bin:$PATH
fi

# SVNKIT
if [ -e /apps/svnkit ]; then
  export SVNKIT_HOME=/apps/svnkit
  export PATH=$SVNKIT_HOME/bin:$PATH
fi

# JGIT
if [ -e /apps/jgit ]; then
  export JGIT_HOME=/apps/jgit
  export PATH=$JGIT_HOME:$PATH
fi

# ZABBIX
if [ -e /apps/zabbix ]; then
  export JGIT_HOME=/apps/jgit
  export PATH=$JGIT_HOME:$PATH
fi

# RLWRAP
if [ -e /apps/rlwrap ]; then
  export RLWRAP_HOME=/apps/rlwrap
  export PATH=$RLWRAP_HOME/bin:$PATH
fi

# Java Common Source Code
if [ -e /apps/srcs ]; then
  export JAVA_SRC_HOME=/apps/srcs
  export J2SE_SRC=$JAVA_SRC_HOME/j2se
  export J2EE_SRC=$JAVA_SRC_HOME/j2ee
  export JAVA_SRC_PATH=$J2SE_SRC:$J2EE_SRC
fi

# ZOOKEEPER
if [ -e /apps/zookeeper ]; then
  export ZK_HOME=/apps/zookeeper
  export PATH=$ZK_HOME/bin:$PATH
fi

# ROCKETMQ
if [ -e /apps/rocketmq ]; then
  export ROCKETMQ_HOME=/apps/rocketmq
  export PATH=$ROCKETMQ_HOME/bin:$PATH
fi

# JSTORM
if [ -e /apps/jstorm ]; then
  export JSTORM_HOME=/apps/jstorm
  export JSTORM_CONF_DIR=$JSTORM_HOME/conf
  export PATH=$JSTORM_HOME/bin:$PATH
fi

# PROTOBUF
if [ -e /apps/protobuf ]; then
  export PROTOBUF_HOME=/apps/protobuf
  export PATH=$PROTOBUF_HOME/bin:$PATH
  export CPATH=$PROTOBUF_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$PROTOBUF_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$PROTOBUF_HOME/lib:$LIBRARY_PATH
  export PKG_CONFIG_PATH=$PROTOBUF_HOME/lib/pkgconfig:$PKG_CONFIG_PATH
fi

# GEM
if [ -e /apps/gem ]; then
  export GEM_HOME=/apps/gem
  export PATH=$GEM_HOME/bin:$PATH
fi

# PHP
if [ -e /apps/php ]; then
  export PHP_HOME=/apps/php
  export PATH=$PHP_HOME/bin:$PHP_HOME/sbin:$PATH
fi

# PYTHON3
if [ -e /apps/python3 ]; then
  export PYTHON3_HOME=/apps/python3
  export PATH=$PYTHON3_HOME/bin:$PATH
  #export PYTHONPATH=$PYTHON3_HOME/lib/python3.5/site-packages
  export PKG_CONFIG_PATH=$PYTHON3_HOME/lib/pkgconfig:$PKG_CONFIG_PATH
  export CPATH=$PYTHON3_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$PYTHON3_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$PYTHON3_HOME/lib:$LIBRARY_PATH
fi

# PYTHON2
if [ -e /apps/python2 ]; then
  export PYTHON2_HOME=/apps/python2
  export PYTHON2_LIBHOME=/apps/python2lib
  export PATH=$PYTHON2_HOME/bin:$PATH
  export PYTHONPATH=$PYTHON2_HOME/lib/python2.7/site-packages
  export PYTHONLIB=$PYTHON2_HOME/lib/python2.7/site-packages
  export PKG_CONFIG_PATH=$PYTHON2_HOME/lib/pkgconfig:$PKG_CONFIG_PATH
  export CPATH=$PYTHON2_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$PYTHON2_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$PYTHON2_HOME/lib:$LIBRARY_PATH
fi

# OPENCV
if [ -e /apps/opencv3 ]; then
  export OPENCV_HOME=/apps/opencv3
  export PATH=$OPENCV_HOME/bin:$PATH
  export PKG_CONFIG_PATH=$OPENCV_HOME/lib/pkgconfig:$PKG_CONFIG_PATH
  export CPATH=$OPENCV_HOME/include:$CPATH
  export LD_LIBRARY_PATH=$OPENCV_HOME/lib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$OPENCV_HOME/lib:$LIBRARY_PATH
fi

# go
if [ -e /apps/go ]; then
  export GOROOT=/apps/go
  export PATH=$GOROOT/bin:$PATH
fi

# rust cargo
if [ -e /apps/cargo ]; then
  export CARGO_HOME=/apps/cargo
  export PATH=$CARGO_HOME/bin:$PATH
fi

# PIP
if [ -e /apps/pip ]; then
  export PYTHONSTARTUP=$HOME/.pythonrc.py
  export PIP_HOME=/apps/apps/pip
fi

# VIM
if [ -e /apps/perl5 ]; then
  export VIM_HOME=/apps/vim
  export PATH=$VIM_HOME/bin:$PATH
fi

# GIT
if [ -e /apps/perl5 ]; then
  export GIT_HOME=/apps/git
  export PATH=$GIT_HOME/bin:$PATH
fi

# ANTLR4
if [ -e /apps/perl5 ]; then
  export ANTLR4_HOME=/apps/antlr
  export PATH=$ANTLR4_HOME/bin:$PATH
fi
