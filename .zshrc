source ~/antigen.zsh
export TERM='xterm-256color'
export MAKEFLAGS="-j4"
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export PATH=/home/chaos/.cargo/bin:$PATH
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv)
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Customize to your needs..
antigen use oh-my-zsh
antigen bundle systemd
antigen bundle archlinux
antigen bundle git
antigen bundle django
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle trapd00r/zsh-syntax-highlighting-filetypes
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme steeef
antigen apply

export EDITOR='nvim'

setopt interactivecomments
alias rm='/bin/rm'
alias zf='nvim $(fzf)'
alias diff='colordiff -u'
alias de="rsync -azvr -P -e ssh --exclude 'base.py' --exclude 'src' --exclude '.git/' --exclude '*.pyc' --exclude '.idea/' ~/Documents/projectforce citigo@192.168.1.160:/home/citigo/"
function delete_pyc {
    find . -type f -name '*.pyc' -delete
    find . -type d -name '__pycache__' -delete
}

alias grep=egrep
alias vim=nvim
function f {
    find . -name $1
}

function  zrg {
    rg -i $1 -g "*.$2"
}

alias largfile='du -hsx * | sort -rh | head -10'
alias ls='/usr/bin/vendor_perl/ls++ --potsf'
alias l='/usr/bin/vendor_perl/ls++ -a --potsf'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
