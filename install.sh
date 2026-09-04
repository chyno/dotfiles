ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# Install GitHub Copilot VS Code extensions
if command -v code >/dev/null 2>&1; then
  for extension in GitHub.copilot GitHub.copilot-chat; do
    if ! code --install-extension "$extension"; then
      echo "Warning: failed to install extension '$extension'" >&2
    fi
  done
else
  echo "Warning: 'code' command not found; skipping VS Code extension installation." >&2
fi

# Update package information
sudo apt update -y

#!/bin/bash
echo "Installing Kiro CLI..."

# Download and install the CLI binary
curl -fsSL https://cli.kiro.dev/install | bash

# Ensure the Kiro CLI binary is added to the PATH for the current session
# (The installer usually adds this to .bashrc/.zshrc, but forcing it ensures immediate availability)
export PATH="$HOME/.kiro/bin:$PATH"

# Verify installation
if command -v kiro-cli &> /dev/null; then
    echo "Kiro CLI successfully installed!"
else
    echo "Kiro CLI installation failed."
fi

