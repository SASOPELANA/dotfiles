# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Rust / Cargo PATH
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

# plugins zshrc
plugins=(
	git
	zsh-autosuggestions
  	zsh-syntax-highlighting
  	zsh-completions
)

source $ZSH/oh-my-zsh.sh

# Alias 

# SEGUNDO: Forzar eliminación de alias conflictivos
# (Oh-My-Zsh define 'ls --color=tty' en algún lugar)
unalias ls 2>/dev/null

# TERCERO: Mis alias personalizados
alias ls="exa --icons"                             
alias la="exa -a --icons"                           
alias ll="exa -lh --icons"
alias l="exa -lh --icons"                         
alias lla="exa -lha --icons"
alias lt="exa -T --icons"                          
alias lta="exa -Ta --icons"                         
alias ltl="exa -T -l --icons"

# Clima 
alias clima='http  "es.wttr.in/-34.514091,-58.681497?lang=es"'
alias oran='http "es.wttr.in/-23.136125,-64.322882"'

# Alias batcat
alias cat='batcat --style=plain'

# Alias para musica
alias rmpcon='systemctl --user start mpd && echo "🎶 MPD encendido. ¡A rockear!"'
alias rmpcoff='rmpc stop && systemctl --user stop mpd && echo "🛑 MPD apagado. Silencio absoluto."'

# alias fastfetch 
alias fast1='fastfetch -c ~/.config/fastfetch/config1.jsonc'
alias fast2='fastfetch -c ~/.config/fastfetch/config2.jsonc'
alias fast3='fastfetch -c ~/.config/fastfetch/config3.jsonc'
alias fast4='fastfetch -c ~/.config/fastfetch/config4.jsonc'

# Alias para kitty
# alias icat='kitty +kitten icat'

# Alias timg para imagenes en terminal
alias icat='timg -pk'

# Alias para Python
alias py='python3'

# Alias tldr
alias tl='tldr'

# ============================================
# Alias para docker - Contenedores
# ============================================

alias docker-start='sudo systemctl start docker && echo "✅ Docker iniciado"'
alias docker-stop='sudo systemctl stop docker docker.socket containerd && echo "🛑 Docker detenido"'
alias docker-status='sudo systemctl status docker --no-pager'

eval "$(zoxide init zsh)"

export PATH="$PATH:/opt/nvim/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"

# Docker format
export DOCKER_FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORT\t{{.Ports}}\nSTATUS\t{{.Status}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSIZE\t{{.Size}}\n"

export PATH=$PATH:/home/sergio/.spicetify

# bun completions
[ -s "/home/sergio/.bun/_bun" ] && source "/home/sergio/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/sergio/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# opencode
export PATH=/home/sergio/.opencode/bin:$PATH
. "/home/sergio/.deno/env"


# Added by Antigravity CLI installer
export PATH="/home/sergio/.local/bin:$PATH"
export SYSTEMD_EDITOR=nvim
