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


# Put your fun stuff here.

ulimit -c unlimited

alias grep='grep -n --color'
alias ls='ls -hF --color=tty'
alias iconvcn='iconv -f gbk -t utf-8'
alias jetty='java -jar $JETTY_HOME/start.jar'
alias yum='yum --noplugins'

eval "$(dircolors -b ~/.dircolors)"
source ~/Utils/shell/common.sh

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[0m\E[5m\E[38;5;124m'              # begin blinking
export LESS_TERMCAP_md=$'\E[0m\E[1m\E[38;5;033m'              # begin bold
export LESS_TERMCAP_me=$'\E[0m\E[1m\E[38;5;226m'              # end mode
#export LESS_TERMCAP_se=$'\E[0m'                               # end standout-mode
export LESS_TERMCAP_se=$'\E[0m'                               # end standout-mode
#export LESS_TERMCAP_so=$'\E[0m\E[1m\E[48;5;033m\E[38;5;226m'  # begin standout-mode - info box
export LESS_TERMCAP_so=$'\E[0m\E[1m\E[48;5;033m\E[38;5;226m'  # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m\E[1m\E[38;5;226m'              # end underline
export LESS_TERMCAP_us=$'\E[0m\E[4m\E[38;5;063m'              # begin underline
export LESSOPEN="| /usr/bin/source-highlight -n -t2 --failsafe --infer-lang -f esc --style-file=krime.style -i %s"
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
export GREP_COLORS='fn=00;38;5;3:ln=00;38;5;110:bn=00;38;5;111:mt=00;38;5;2:ms=00;38;5;10:mc=00;38;5;28:se=00;38;5;7'

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

export PS1='\[\n\e[01;37m\]\u@\[\e[4m\e[38;5;246m\]\h>\[\e[0m\e[01;33m\][ \W ]\[\e[0m\] $(gitstat)\n\$ '

# History Configuration
export PROMPT_COMMAND='history -a'
export HISTTIMEFORMAT='%F %T '
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoredups
export HISTIGNORE='pwd:sl:ls:ps:cd:fg*:exit:poweroff:reboot:date:w:who:tree:pstree:whoami:id:df:ifconfig:netstat:fortune:history:jobs'

export EDITOR='/usr/bin/vim'
export PATH="$PATH:/usr/local/sbin:/opt/papi-5.2.0/bin:/opt/pdtoolkit-3.19p1/x86_64/bin:/opt/tau-2.22.3b1/x86_64/bin"

export KRINUX_WORKSHOP=$HOME/Workshop
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$KRINUX_WORKSHOP/hypre/lib:$KRINUX_WORKSHOP/mfem/lib
export CPATH=$LD_LIBRARY_PATH:$KRINUX_WORKSHOP/hypre/include:$KRINUX_WORKSHOP/mfem/include
# export GASNET_SPAWNFN=S
# export GASNET_SSH_SERVERS="c1 c2"

# Perl Module Paths
#PERL_MB_OPT="--install_base \"/opt/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/opt/perl5"; export PERL_MM_OPT;
#export PERL5LIB=/opt/perl5/lib/perl5/x86_64-linux:/opt/perl5/lib/perl5:$PERL5LIB
export PATH=/opt/perl5/bin:$PATH

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
export NODE_HOME=/opt/node
export PATH=$NODE_HOME/bin:$PATH

# NGINX
export NGINX_HOME=/opt/nginx
export PATH=$NGINX_HOME/sbin:$PATH

# Google Performance Tools
export COMMON_HOME=/opt/common
export CPATH=$COMMON_HOME/include:$CPATH
export LD_LIBRARY_PATH=$COMMON_HOME/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$COMMON_HOME/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=$COMMON_HOME/lib/pkgconfig/:$PKG_CONFIG_PATH
export PATH=$COMMON_HOME/bin:$PATH

# Redis
export REDIS_HOME=/opt/redis
export PATH=$REDIS_HOME/bin:$PATH

