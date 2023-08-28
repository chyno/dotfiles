echo "adding .gitconfit"
# symlink of git directory to my home directory
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# symlink certs folder to my home directory
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/certs ~/localcerts

# Update package information
sudo apt-get update

# Install Fish Shell
sudo apt-get install fish -y
