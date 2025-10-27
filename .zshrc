# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="/home/peltori/Downloads/repos/dotfiles/custom"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  kubectl
)

# --- my prompt palette (matches Waybar/Hypr) ---
ZSH_BASE='#0C0C10'
ZSH_SURFACE='#191a31'
ZSH_OVERLAY='#282A37'
ZSH_TEXT='#E8E6E1'
ZSH_ACCENT='#C8AA64'           # gold
ZSH_ACCENT_INACTIVE='#5A4632'  # dull bronze
ZSH_HL='#9B6EDC'               # violet
ZSH_DANGER='#BE4646'           # red

# --- agnoster theme overrides (truecolor ok in Kitty) ---
# cwd segment
AGNOSTER_DIR_BG="$ZSH_SURFACE"
AGNOSTER_DIR_FG="$ZSH_TEXT"

# user@host
AGNOSTER_CONTEXT_BG="$ZSH_OVERLAY"
AGNOSTER_CONTEXT_FG="$ZSH_TEXT"

# git segment
AGNOSTER_GIT_CLEAN_BG="$ZSH_ACCENT"
AGNOSTER_GIT_CLEAN_FG="#101010"
AGNOSTER_GIT_DIRTY_BG="$ZSH_DANGER"
AGNOSTER_GIT_DIRTY_FG="#ffffff"
AGNOSTER_GIT_BRANCH_STATUS=true
AGNOSTER_GIT_INLINE=false

# venv / aws
AGNOSTER_VENV_BG="$ZSH_HL"
AGNOSTER_VENV_FG="$ZSH_BASE"
AGNOSTER_AWS_BG="$ZSH_ACCENT_INACTIVE"
AGNOSTER_AWS_FG="$ZSH_TEXT"
AGNOSTER_AWS_PROD_BG="$ZSH_DANGER"
AGNOSTER_AWS_PROD_FG="#ffffff"

# status symbols
AGNOSTER_STATUS_BG="$ZSH_BASE"
AGNOSTER_STATUS_FG="$ZSH_TEXT"
AGNOSTER_STATUS_RETVAL_FG="$ZSH_DANGER"
AGNOSTER_STATUS_ROOT_FG="$ZSH_HL"
AGNOSTER_STATUS_JOB_FG="$ZSH_HL"
AGNOSTER_STATUS_RETVAL_NUMERIC=false
source $ZSH/oh-my-zsh.sh

# User configuration

ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias osrs="cd Games/osrs && ./RuneLite.AppImage"
alias hero="~/./Downloads/Heroic-2.18.1-linux-x86_64.AppImage"
alias godot="~/./Games/Godot/Godot_v4.5.1-stable_linux.x86_64"
backup-fedora() {
  sudo rsync -azXvP --delete \
  --exclude-from="/home/peltori/exclude-file.txt" \
  -e "ssh -i /home/peltori/.ssh/rasperry_p -p 2981" \
   / peltori@192.168.1.121:/mnt/T7/backups/fedora "$@"
}
# this is for the zsh syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# override syntax highlighting colors
ZSH_HIGHLIGHT_STYLES[command]='fg=#C8AA64'      # kultainen hyväksytty komento
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#9B6EDC' # violetit varatut sanat
ZSH_HIGHLIGHT_STYLES[alias]='fg=#E8E6E1'         # alias vaalea
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#E8E6E1'       # builtin komennot vaalea
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#BE4646' # virheellinen komento punaisena
