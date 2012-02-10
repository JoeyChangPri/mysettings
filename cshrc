# $FreeBSD: src/share/skel/dot.cshrc,v 1.14.10.1.2.1 2009/10/25 01:10:29 kensmith Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias vi	vim

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/home/bin)
#set manpath = (/usr/man /usr/share/man)
setenv	EDITOR	vim
setenv	PAGER	more
setenv	BLOCKSIZE	K

setenv LSCOLORS ExGxFxdxCxegedabagExEx
setenv CLICOLOR yes
set     autolist
setenv GREP_OPTIONS --color=auto

if ($?prompt) then
	# An interactive shell -- set some stuff up
    #set prompt = "%B[%n@wauee.com:%~]%b%"
    set prompt = "%B%{\033[1;34m%}[%{\033[1;37m%}%n%{\033[1;34m%}@:%~]%% %b" 
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
