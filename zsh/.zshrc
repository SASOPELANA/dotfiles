eval "$(starship init zsh)"

ZSH_DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"

# Rust / Cargo PATH
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

plugins=(
	git
 	zsh-autosuggestions
  	zsh-syntax-highlighting
  	zsh-completions
)

source $ZSH/oh-my-zsh.sh


# Alias exa
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
alias cat='batcat --style=plain --theme 'ansi''

# Alias para musica rmpc y mpd 
alias rmpcon='systemctl --user start mpd && echo "🎶 MPD encendido. ¡A rockear!"'
alias rmpcoff='rmpc stop && systemctl --user stop mpd && echo "🛑 MPD apagado. Silencio absoluto."'

# alias fastfech 
alias fastfetch1='fastfetch --config ~/.config/fastfetch/sample_1.jsonc'
alias fastfetch2='fastfetch --config ~/.config/fastfetch/sample_2.jsonc'
alias fastfetch3='fastfetch --config ~/.config/fastfetch/ordered-sections.jsonc'

# Alias Zellij 
alias z='zellij'

# Alias para wallpaper
walset() {
  wal -i "$1" && ~/.config/i3/wal_colors.sh && i3-msg reload
}

# Alias para kitty
# alias icat='kitty +kitten icat'

# Alias para wezterm 
alias icat='wezterm imgcat'

# variables de entorno
export PATH="$PATH:/opt/nvim/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-11-09 18:44:05
export PATH="$PATH:/home/sergio/.local/bin"

export PATH="$HOME/bin:$PATH"

export PATH=$PATH:/opt/nvim/bin

export PATH=$PATH:/home/sergio/.spicetify

export PATH="$PATH:$HOME/.dotnet/tools"

# Docker format
export DOCKER_FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORT\t{{.Ports}}\nSTATUS\t{{.Status}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSIZE\t{{.Size}}\n"

