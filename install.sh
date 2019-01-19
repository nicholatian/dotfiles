#!/bin/sh
#

for file in $(ls -1 src); do
	cp "src/${file}" "${HOME}/.${file}";
done
unset file;
unset bfile;

source "${HOME}/.bash_profile"
