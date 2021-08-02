# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR=nvim

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export ZSH_DIR='/home/sleep/.config/zsh'

source $ZSH_DIR/aliases.zsh
source $ZSH_DIR/scripts.zsh
source $ZSH_DIR/nnn.zsh


for file in $ZSH_DIR/plugins/*.zsh; do
    source "$file"
done

eval "$(jump shell)"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

