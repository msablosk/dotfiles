# Setup for vi CMD mode indicator
# if mode indicator wasn't setup by theme, define default
if [[ "$MODE_INDICATOR" == "" ]]; then
  MODE_INDICATOR="%{$fg_bold[red]%}CMD%{$reset_color%}"
fi

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
}

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

zstyle ':vcs_info:git*' formats " on %{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%}"

PROMPT=$'%{\e[0;37m%}%B[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;37m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;37m%}%B]%b%{\e[0m%} - %b%{\e[0;37m%}%B[%b%{\e[1;37m%}%~${vcs_info_msg_0_}%{\e[0;37m%}%B]%b%{\e[0m%} - %{\e[0;37m%}%B[%b%{\e[0;33m%}%s$(vi_mode_prompt_info)%{\e[0;37m%}%B]%b%{\e[0m%}
%{\e[0;37m%}%B%B%{\e[1;35m%} =>%{\e[0m%}%b '
#RPROMPT='[%*]'
PS2=$' \e[0;31m%}%B => %{\e[0m%}%b '


TMOUT=60

TRAPALRM() {
    zle reset-prompt
}
