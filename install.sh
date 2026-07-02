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
