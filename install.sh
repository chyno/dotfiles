ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# Configure Kiro MCP servers for Codespaces

mkdir -p ~/.kiro/settings
cat > ~/.kiro/settings/mcp.json <<'EOF'
{
  "mcpServers": {
  
  "atlassian": {
    "command": "npx",
    "args": [
      "-y",
      "mcp-remote@latest",
      "https://mcp.atlassian.com/v1/mcp",
      "--host", "127.0.0.1",
      "--port", "41791"
    ],
    "disabled": false,
    "autoApprove": []
  }  
  },
  "powers": {
    "mcpServers": {
      "power-figma-figma": {
        "url": "https://mcp.figma.com/mcp",
        "disabled": false,
        "disabledTools": []
      }
    }
  }
}
EOF


# Install Kiro CLI if not already present
if ! command -v kiro-cli >/dev/null 2>&1; then
  echo "Installing Kiro CLI..."
  curl -fsSL https://cli.kiro.dev/install | bash
fi

# Update package information
sudo apt update -y
