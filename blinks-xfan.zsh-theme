# https://github.com/blinks zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{magenta}%}± %#%{%f%k%b%}"
  else
    echo '%{%F{magenta}%} %#%{%f%k%b%}'
  fi
}

# This theme works with both the "dark" and "light" variants of the
# Solarized color schema.  Set the SOLARIZED_THEME variable to one of
# these two values to choose.  If you don't specify, we'll assume you're
# using the "dark" variant.

case ${SOLARIZED_THEME:-dark} in
    light) bkg=white;;
    *)     bkg=black;;
esac

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[%{$reset_color%}%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[blue]%}%n%{$reset_color%}%{$fg[yellow]%}@%{$reset_color%}%{$fg[cyan]%}%m%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%}$(git_prompt_info)
$(_prompt_char) '

# RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'
