ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# Install Kiro CLI if not already present
if ! command -v kiro-cli >/dev/null 2>&1; then
  echo "Installing Kiro CLI..."
  curl -fsSL https://cli.kiro.dev/install | bash
fi

# Update package information
sudo apt update -y
