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
		.exports
		.gitconfig
		.gitignore)

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

cd ~/.fonts
font_dirs=*

for d in $font_dirs
do
	#echo ${d}
	mkdir -p ~/Github/dotfiles/.fonts/${d}
	cp -r -v ~/.fonts/${d} ~/Github/dotfiles/.fonts/${d}
done

echo "EOF"
