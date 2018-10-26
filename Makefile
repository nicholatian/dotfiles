#!/usr/bin/make
#

.PHONY: default macos shell js uutils hg xorg emacs

default: shell js uutils hg xorg emacs
macos: shell js uutils hg emacs

shell:
	cp .aliases $$HOME/.aliases
	cp .bash_logout $$HOME/.bash_logout
	cp .bash_profile $$HOME/.bash_profile
	cp .bash_prompt $$HOME/.bash_prompt
	cp .bashrc $$HOME/.bashrc
	cp .exports $$HOME/.exports
	cp .functions $$HOME/.functions

js:
	cp .babel.json $$HOME/.babel.json
	cp .yarnrc $$HOME/.yarnrc

uutils:
	cp .curlrc $$HOME/.curlrc
	cp .dmrc $$HOME/.dmrc
	cp .editorconfig $$HOME/.editorconfig
	cp .inputrc $$HOME/.inputrc
	cp .screenrc $$HOME/.screenrc
	cp .wgetrc $$HOME/.wgetrc

hg:
	cp .hgignore $$HOME/.hgignore

xorg:
	cp .xbindkeysrc $$HOME/.xbindkeysrc

emacs:
	cp -r .emacs.d $$HOME/
	cp .emacs $$HOME/.emacs
