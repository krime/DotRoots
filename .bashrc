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
if [ -f ~/.less_style ]; then
  export LESSOPEN="| /usr/bin/source-highlight -n -t2 --failsafe --infer-lang -f esc --style-file=$HOME/.common/.lessex -i %s"
else
  export LESSOPEN="| /usr/bin/source-highlight -n -t2 --failsafe --infer-lang -f esc -i %s"
fi
#export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'
export LESS=' -R -M --shift 5 '
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

# export GASNET_SPAWNFN=S
# export GASNET_SSH_SERVERS="c1 c2"

# Perl Module Paths
export PERL_HOME=/opt/apps/perl5
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:$PERL_HOME";
export PERL_MB_OPT="--install_base $PERL_HOME"
export PERL_MM_OPT="INSTALL_BASE=$PERL_HOME"
export PERL5LIB="$PERL_HOME/lib/perl5/x86_64-linux:$PERL_HOME/lib/perl5:$PERL5LIB"
export PERLLIB=$PERL5LIB
export PATH="$PERL_HOME/bin:$PATH"
export PERLBREW_ROOT=/opt/apps/perlbrew
[ -f $PERLBREW_ROOT/etc/bashrc ] && source $PERLBREW_ROOT/etc/bashrc

export JAVA_HOME=/usr/java/latest

# ANT
export ANT_HOME=/opt/ant
export ANT_OPTS=
export PATH=$ANT_HOME/bin:$PATH

# MAVEN
export M2_HOME=/opt/maven
export M2=$M2_HOME/bin
export MAVEN_OPTS='-Xms256m -Xmx512m'
export PATH=$M2:$PATH

# JETTY
export JETTY_HOME=/opt/jetty
export PATH=$JETTY_HOME/bin:$PATH

# TAG UTILITY
export CTAGS_HOME=/opt/ctags
export GTAGS_HOME=/opt/global
export CSCOPE_HOME=/opt/cscope
export IDUTILS_HOME=/opt/idutils
export PATH=$CTAGS_HOME/bin:$GTAGS_HOME/bin:$CSCOPE_HOME/bin:$IDUTILS_HOME/bin:$PATH

# NODEJS
export NODE_HOME=/apps/node
export PATH=$NODE_HOME/bin:$PATH

# NGINX
export NGINX_HOME=/apps/nginx
export PATH=$NGINX_HOME/sbin:$PATH

# Google Performance Tools
export COMMON_HOME=/opt/local
export CPATH=$COMMON_HOME/include:$CPATH
export LD_LIBRARY_PATH=$COMMON_HOME/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$COMMON_HOME/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=$COMMON_HOME/lib/pkgconfig/:$PKG_CONFIG_PATH
export PATH=$COMMON_HOME/bin:$PATH

# Redis
export REDIS_HOME=/opt/redis
export PATH=$REDIS_HOME/bin:$PATH

# Scons
export SCONS_HOME=/opt/scons
export PATH=$SCONS_HOME/bin:$PATH

# Apache Portable Runtime
export APR_HOME=/opt/apr
export PATH=$APR_HOME/bin:$PATH
export CPATH=$APR_HOME/include:$CPATH
export LD_LIBRARY_PATH=$APR_HOME/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$APR_HOME/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=$APR_HOME/lib/pkgconfig/:$PKG_CONFIG_PATH

# Serf
export SERF_HOME=/opt/serf
export CPATH=$SERF_HOME/include:$CPATH
export LD_LIBRARY_PATH=$SERF_HOME/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$SERF_HOME/lib:$LIBRARY_PATH

# Neon
export NEON_HOME=/opt/neon
export PATH=$NEON_HOME/bin:$PATH
export CPATH=$NEON_HOME/include:$CPATH
export LD_LIBRARY_PATH=$NEON_HOME/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$NEON_HOME/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=$NEON_HOME/lib/pkgconfig/:$PKG_CONFIG_PATH

# MongoDB
export MONGO_HOME=/opt/mongodb
export PATH=$MONGO_HOME/bin:$PATH

# HTTPD
export HTTPD_HOME=/opt/httpd
export PATH=$HTTPD_HOME/bin:$PATH

# TagsUtils
export TAGS_HOME=/opt/tagsutils
export PATH=$TAGS_HOME/bin:$PATH

# Gradle
export GRADLE_HOME=/opt/gradle
export PATH=$GRADLE_HOME/bin:$PATH

# SVNKIT
export SVNKIT_HOME=/opt/svnkit
export PATH=$SVNKIT_HOME/bin:$PATH

# JGIT
export JGIT_HOME=/opt/jgit
export PATH=$JGIT_HOME:$PATH

# RLWRAP
export RLWRAP_HOME=/opt/rlwrap
export PATH=$RLWRAP_HOME/bin:$PATH

# Java Common Source Code
export JAVA_SRC_HOME=/opt/srcs
export J2SE_SRC=$JAVA_SRC_HOME/j2se
export J2EE_SRC=$JAVA_SRC_HOME/j2ee
export JAVA_SRC_PATH=$J2SE_SRC:$J2EE_SRC
