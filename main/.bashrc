# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH=$PATH:/test
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#export PS1='[\u@\h \w]\$ '
export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias vi='/usr/bin/vim'

alias ls='ls --color=auto -h'

alias grep='grep --color=auto -i'
alias df="df -hT"
alias c="clear"
alias celar="clear"
alias clea="clear"
alias bzip2='bzip2 -v'
alias bunzip2='bunzip2 -v'
alias 000='script /test/scriptfile1.txt'
alias chrome='/usr/bin/google-chrome --no-sandbox'

#source ~/.local/share/blesh/ble.sh


#
# Firewall Alias
#
alias fwcmd='firewall-cmd'
alias fwadd='firewall-cmd --permanent'
alias fwreload='firewall-cmd --reload'
alias fwlist='firewall-cmd --list-all'


#
# Firewall Alias
#
alias fwcmd='firewall-cmd'
alias fwadd='firewall-cmd --permanent'
alias fwreload='firewall-cmd --reload'
alias fwlist='firewall-cmd --list-all'


#
# DNS Server Alias
#
alias named.conf='vi /etc/named.conf'
alias named.rfc1912.zones='vi /etc/named.rfc1912.zones' 
alias DNS='cd /var/named'
alias dnslog='tail -f /var/log/messages'

