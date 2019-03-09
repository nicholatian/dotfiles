#!/bin/sh
#

if [ "$1" = '' ]; then
	dest="${HOME}";
else 
	dest="$1";
fi

echo "destination: ${dest}";

for file in $(ls -1 src); do
	#if [ -d "${dest}/.${file}" ]; then
	#	rm -rf "${dest}/.${file}";
	#fi
	cp -r "src/${file}" "${dest}/.${file}";
done

source "${dest}/.bash_profile"

unset file;
unset bfile;
unset dest;
