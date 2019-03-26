export PATH=$HOME/.local/bin:$PATH
source ~/.antigen/antigen.zsh
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle kubectl

# bundlez
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

# Load powerlevel9k.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply

alias 'mnt-docs'='rclone mount --daemon --allow-non-empty --vfs-cache-mode=full google-drive:/documents ~/Documents'
alias 'umnt-docs'='fusermount -u ~/Documents'

alias 'mnt-pics'='rclone mount --daemon --vfs-cache-mode=full butalla-photos:butalla-photos ~/Pictures/butalla-photos'
alias 'umnt-pics'='fusermount -u ~/Pictures/butalla-photos'