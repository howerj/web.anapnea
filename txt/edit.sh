#!/bin/bash
if [ -f $1 ]; then
	vim -s .vimrc.local $1;
else
	touch $1;
	echo "## `date +%Y-%m-%d` $1" >> $1;
	vim -s .vimrc.local $1;
fi
