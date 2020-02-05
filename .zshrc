# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin/:$PATH
export GPG_TTY=`tty`

# source $HOME/.bashrc

# Path to your oh-my-zsh installation.
export ZSH="/Users/Lukas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# ALIASES
alias zshrc="code ~/.zshrc"
alias gcm="git checkout master"
alias gb="git checkout -b"
alias o="open ."

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# ZSH_CUSTOM=/Users/Lukas/Documents/J.A.R.V.I.S.

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  vscode
  gpg-agent
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Homebrew
export PATH=/usr/local/bin:$PATH

#virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenv
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh

# added by Miniconda3 installer
export PATH="/Users/Lukas/miniconda3/bin:$PATH"

# Set Go paths
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Support platform-specific binary variables for Hyperledger Fabric
export PATH="/Users/Lukas/Documents/J.A.R.V.I.S./hyperledger-fabric/2_code/fabric-samples/bin:$PATH"

# Changing directory
cd /Users/Lukas/Documents/J.A.R.V.I.S.

# FOR Node.js
export NODE_PATH='/usr/local/lib/node_modules'
export PATH="$HOME/.npm-packages/bin:$PATH"

# Used for converting .mov files to .gif 
function movtogif () {
  tempfile=.mov-to-gif-$(date +"%s").png
  ffmpeg -v quiet -stats -y -i $1 -vf fps=10,palettegen $tempfile
  ffmpeg -v quiet -stats -i $1 -i $tempfile -filter_complex "fps=10,paletteuse" "${1%.mov}.gif"
  rm $tempfile
}

# For Pygmentize
export PATH="/Users/Lukas/.local/bin:$PATH"

# For ImageMagick
export MAGICK_HOME="$HOME/ImageMagick-7.0.9"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

# Clean User Interface
prompt_context() {
  # Custom (Random emoji)
  emojis=("⚡️" "🔥" "🐙" "👻" "🚀" "🌙" "🤙🏼" "😌" "✨")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}

# Go to the root of the current git project, or just go one folder up
function up() {
  export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
  if [ -z $git_dir ]
  then
    cd ..
  else
    cd $git_dir
  fi
}
