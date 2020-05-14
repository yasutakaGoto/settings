#git用（ブランチ名表示とか、補完とか）
fpath=(~/.zsh $fpath)
if [ -f ${HOME}/.zsh/git-completion.zsh ]; then
       zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fi
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
       source ${HOME}/.zsh/git-prompt.sh
fi
autoload -U compinit && compinit
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=
GIT_PS1_SHOWUPSTREAM=
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f:%F{cyan}%~%f%F{magenta}$(__git_ps1)%f
\$ '
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# export PATH="$PATH:$HOME/dev/flutter/bin"

