# Path to your oh-my-zsh installation.
export ZSH=/Users/dzh/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias host="ssh -p 6006 dzh@219.224.166.173"
alias server2="ssh -Y -p 5004 dongzhihong@219.224.166.130"
alias server="ssh -Y dzh@192.168.0.138"
alias dzhvpn="ssh dzh@45.55.26.243"
alias CXX="clang++ -std=c++11"
alias CC="clang"
alias bytedance="ssh dongzhihong@10.6.131.76"
alias byte76="ssh chenshini@10.6.131.76"
alias cxx="clang++ -std=c++11"
alias host="ssh -p 5008 dzh@219.224.166.174"

alias mserver="sudo sshfs -o transform_symlinks -ofollow_symlinks  dongzhihong@10.6.131.76:/data01/home/dongzhihong /Users/dzh/mnt/dev1"
alias umserver="sudo umount -f /Users/dzh/mnt/dev1"
alias ycm="/Users/dzh/github/YCM-Generator/config_gen.py"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CMAKE_C_COMPILER="/usr/bin/gcc"
export CMAKE_CXX_COMPILER="/usr/bin/g++"
export CC="/usr/bin/gcc"
export CXX="/usr/bin/g++"
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
alias relay="ssh dongzhihong01@relay01.baidu.com"

# export GOROOT=/Users/dzh/github/go-go1.6.2
export GOROOT=/usr/local/Cellar/go/1.6.2/libexec
export PATH=$GOROOT/bin:$PATH
export GOPATH=/Users/dzh/.go
export PATH=$GOPATH/bin:$PATH
export GOPATH=$GOPATH:/Users/dzh/code/6.824
alias cc="clang++ -std=c++11"
export https_proxy="http://hyatt.usv3-h.xduotai.com:10534"
export http_proxy=$https_proxy
# export GOPATH=/Users/dzh/code/6.824:$GOPATH
# export GOPATH=/Users/dzh/code/golang/work:$GOPATH
# export PATH=$GOPATH/bin:$PATH
export HOMEBREW_CASK_OPTS="--caskroom=/etc/Caskroom"
export https_proxy=""
export PATH=${PATH}:/Users/dzh/IdeaProjects/spark/bin/

alias idev="ssh dongzhihong01@cq01-rdqa-dev004.cq01"
