#!/bin/zsh
mv ~/.zshrc ~/.zshrc.bak
wget https://ghproxy.com/raw.githubusercontent.com/zsh-users/antigen/master/bin/antigen.zsh -O ~/.antigen.zsh
cat >~/.zshrc<<EOF # 开始
source ~/.antigen.zsh 

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme ys

# Tell Antigen that you're done.
antigen apply

if [[ -f ~/.zprofile ]]; then
  source ~/.zprofile
fi
EOF
echo 'Please input password.'
chsh -s $(which zsh)
zsh
