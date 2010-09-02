# 
# This file is based on the configuration written by
# Bruno Bonfils, <asyd@debian-fr.org> 
# Written since summer 2001

#
# My functions (don't forget to modify fpath before call compinit !!)
fpath=($HOME/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

export PATH=/var/lib/gems/1.8/bin:${HOME}/.gem/ruby/1.8/bin:${HOME}/conangel/android-sdk-linux_86/tools:${PATH}
export ANDROID_HOME="${HOME}/conangel/android-sdk-linux_86"

# colors
eval `dircolors $HOME/.zsh/colors`

autoload -U zutil
autoload -U compinit
autoload -U complist

bindkey -e
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey '^K' kill-whole-line
bindkey "\e[H" beginning-of-line        # Home (xorg)
bindkey "\e[1~" beginning-of-line       # Home (console)
bindkey "\e[4~" end-of-line             # End (console)
bindkey "\e[F" end-of-line              # End (xorg)
bindkey "\e[2~" overwrite-mode          # Ins
bindkey "\e[3~" delete-char             # Delete
bindkey "5C" forward-word              # ctrl+Left
bindkey "5D" backward-word             # ctrl+Right

# Activation
compinit
# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending  

# Resource files
for file in $HOME/.zsh/rc/*.rc; do
	source $file
done

#if [[ -s /home/muxe/.rvm/scripts/rvm ]] ; then source /home/muxe/.rvm/scripts/rvm ; fi

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

umask 027
