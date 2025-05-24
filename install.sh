#!/bin/sh
#

if [ "$1" = '' ]; then
	dest="${HOME}";
else
	dest="$1";
fi

if command -v 'gcp' 2>&1 >/dev/null; then
	_cp='gcp';
else
	_cp='cp';
fi

echo "destination: ${dest}";

for file in $(ls -1 src); do
	$_cp -TR "src/${file}" "${dest}/.${file}";
done

. "${dest}/.profile"

unset file;
unset bfile;
unset dest;
unset _cp;
