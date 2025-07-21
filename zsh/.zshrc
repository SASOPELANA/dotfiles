# Starchip
eval "$(starship init zsh)"

export PATH="$HOME/.cargo/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
  	zsh-syntax-highlighting
  	zsh-completions
	)

source $ZSH/oh-my-zsh.sh

# Básico
unalias ls la ll l lla lsa 2>/dev/null
alias ls="exa --icons"                             
alias la="exa -a --icons"                           
alias ll="exa -lh --icons"
alias l="exa -lh --icons"                         
alias lla="exa -lha --icons"
alias lt="exa -T --icons"                          
alias lta="exa -Ta --icons"                         
alias ltl="exa -T -l --icons"

# alias fastfech 
alias fastfetch1='fastfetch --config ~/.config/fastfetch/sample_1.jsonc'
alias fastfetch2='fastfetch --config ~/.config/fastfetch/sample_2.jsonc'
alias fastfetch3='fastfetch --config ~/.config/fastfetch/ordered-sections.jsonc'

# Alias Zellij 
alias z='zellij'

# Clima 
alias clima='curl -s "es.wttr.in/-34.514091,-58.681497?lang=es"'
alias oran='curl "es.wttr.in/-23.136125,-64.322882"'

# Alias batcat
alias cat='batcat --style=plain --theme 'ansi''

# Alias para matar procesos de Node
alias killnode='pkill nodemon; pkill node'

# Alias icat 
alias icat='kitten icat'

# Alias para musica rmpc y mpd 
alias rmpcon='systemctl --user start mpd && echo "🎶 MPD encendido. ¡A rockear!"'
alias rmpcoff='rmpc stop && systemctl --user stop mpd && echo "🛑 MPD apagado. Silencio absoluto."'

# Variables de entorno 
export PATH="$HOME/.local/bin:$PATH"

# Nvm para una version de Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go 
export PATH=$PATH:/usr/local/go/bin

# Spicetify
export PATH=$PATH:/home/sergio/.spicetify
