# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git autojump)
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

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

# added by Anaconda 2.0.1 installer
# export PATH="/usr/local/anaconda/bin:$PATH"
#set up path and include, library path

# TERM
export TERM=xterm-256color
# EMACS default shell in ansi-term
export ESHELL=/usr/bin/zsh

export PATH=/usr/local/MATLAB/R2013b/bin:$PATH
export PATH=/usr/local/cuda/bin:$PATH
export PATH=$PATH:/usr/local/nginx/sbin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/
#
#
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu:/usr/local/lib:/usr/lib/x86_64-linux-gnu/lib
export CPP_INCLUDE_PATH=$CPP_INCLUDE_PATH:/usr/include/opencv
export CPP_INCLUDE_PATH=$CPP_INCLUDE_PATH:/opt/intel/composer_xe_2015.2.164/mkl/include
export LDFLAGS="-L/usr/lib -L/usr/local/lib"
export LIBRARY_PATH=$LIBRARY_PATH:/usr/lib/x86_64-linux-gnu
#export PATH=/home/dzh/torch/install/bin:$PATH  # Added automatically by torch-dist
#export LD_LIBRARY_PATH=/home/dzh/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export MW_NVCC_PATH=/usr/local/cuda/bin/nvcc
#
#
export EDITOR="vim"
export LDFLAGS="$LDFLAGS -lm"
#
#set up third party path
export CAFFE_HOME=/home/dzh/Downloads/caffe_video/build/tools/
export PYTHONPATH=$PYTHONPATH:/home/dzh/Downloads/caffe_video/python
export PYTHONPATH=$PYTHONPATH:/home/dzh/Downloads/cxxnet/wrapper
export PYTHONPATH=/usr/lib/python2.7/lib-dynload:$PYTHONPATH

#
#export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:
alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/bin/:$PATH"
# plugins
# autojump
[[ -s /home/dzh/.autojump/etc/profile.d/autojump.sh ]] && source /home/dzh/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

# note parse arguments to generate the clang_compete file. use /usr/local/bin/cc_args.py 
alias clang++="clang++ -std=c++11"
alias clang="clang -std=c++11"
# export CC="clang++"
export PATH=$PATH:/home/dzh/anaconda/bin
alias temacs="TERM=xterm-256color emacs --daemon"
alias te="TERM=xterm-256color emacsclient -nw"
alias e='emacsclient -c'
alias -s html='emacs -e --client'
alias nw='emacsclient -nw'
alias o='xdg-open'
alias sh='ssh -X dzh@192.168.0.138'
alias findetags='find . -regex ".*\.\(cpp\|h\|hpp\|cu\|py\)"'
#export PATH="/home/dzh/anaconda/bin:$PATH"

#CXXNET PATH
export CXXNET_WRAPPER_PATH="/home/dzh/Downloads/cxxnet/wrapper/"
export CXXNET_PATH="/home/dzh/Downloads/cxxnet"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dzh/Downloads/cxxnet/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-7.0/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/composer_xe_2015.2.164/compiler/lib/intel64
#configureation for  intel mkl
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/composer_xe_2015.2.164/mkl/lib/intel64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dzh/Downloads/caffe_video/build/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dzh/Downloads/parameter_server/third_party/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dzh/Downloads/cxxnet/wrapper
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export PATH=$PATH:/home/dzh/Downloads/cxxnet/bin
# export CPPFLAGS=                # 

#export nodejs
# export PATH=$PATH:/
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/x86_64-linux-gnu/pkgconfig

# configuration for caffe
export PATH=$PATH:/home/dzh/Downloads/caffe_video/build/tools

# cxxnet wrapper  
export PYTHONPATH=$PYTHONPATH:/home/dzh/Downloads/cxxnet-master/wrapper
# go lang
export GOROOT=/home/dzh/Downloads/golang
export GOPATH=/home/dzh/gocode
export PATH=$PATH:$GOPATH/bin
export PATH=~/.cabal/bin/:$PATH

#lua
export PATH=/home/dzh/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/dzh/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
alias irip="ssh -X dzh@191.168.0.138"
alias sh136="ssh -XY -p 5006 dzh@192.168.0.136"
alias cmake="cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
# tmux setup
alias tmux="TERM=xterm-256color tmux"
# setup for the z.sh
# . /home/dzh/z/z.sh
alias vcl="cvlc --x11-display localhost:11.0"
alias shvpn="ssh dzh@45.55.26.243"
alias lsh="ssh -p 5004 dongzhihong@219.224.166.130"


export PATH=/home/dzh/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/dzh/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
