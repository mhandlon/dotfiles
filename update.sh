#!/bin/bash

filez=(.Xdefaults
		.Xprofile
		.Xresources
		.ackrc
		.aliases
		.bash_profile
		.bash_prompt
		.functions
		.path
		.dockerfunc
		.extra
		.exports)

for i in ${filez[@]}; do
	cp -v ~/${i} ./${i}
done

cd ~/bin
bin_filez=*

for f in $bin_filez
do
	#echo ${f}
	cp -v ~/bin/${f} ~/Github/dotfiles/bin/${f}
done

echo "EOF"
