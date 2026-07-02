ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# Install GitHub Copilot VS Code extensions
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat

# Update package information
sudo apt update -y
