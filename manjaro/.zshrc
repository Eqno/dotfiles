# Use powerline
USE_POWERLINE="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# My configs
## alias
alias pc="proxychains4"
alias vim="nvim"
alias avgi="awk '{cnt += 1; sum += \$1};END {printf \"%d\n\", sum/cnt}'"
alias avgf="awk '{cnt += 1; sum += \$1};END {printf \"%.2lf\n\", sum/cnt}'"
alias sumn="awk '{sum += \$1};END {print sum}'"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="nvim ~/.zshrc"
