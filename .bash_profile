# -- http://dghubble.com/blog/posts/.bashprofile-.profile-and-.bashrc-conventions/

#multiple line comment
: '
This is a test comment
Author foo bar
Released under GNU
'

#[[ -s ~/.bashrc ]] && source ~/.bashrc

source ~/.profile
source ~/.bashrc

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you dont want to commit.
for file in ~/.{bash_prompt,aliases,functions,path,dockerfunc,extra,exports}; do
	[[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

LD_LIBRARY_PATH=$LD_LIBRARY_PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false

gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

export PATH="$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
