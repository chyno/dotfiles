# Define your desired path
TARGET_DIR="/home/node/workspaces/apps"
SQUAD_DIR="/home/node/workspaces/chynoweth-squad"
WORKSPACE_ROOT="/home/node/workspaces"

# Update package information
sudo apt update -y

npm install -g @github/copilot
npm install -g @bradygaster/squad-cli

# 1. Create the parent directory
mkdir -p "$WORKSPACE_ROOT"

# 2. Move the repository from the default location to your subfolder
# Only move if the target doesn't exist and the source DOES exist
if [ -d "/home/node/workspace" ] && [ ! -d "$TARGET_DIR" ]; then
    echo "Relocating repository to $TARGET_DIR..."
    mv /home/node/workspace "$TARGET_DIR"
fi

# 3. Clone your second repository (SQUAD)
if [ ! -d "$SQUAD_DIR" ]; then
    git clone https://github.com/chyno/chynoweth-squad.git "$SQUAD_DIR"
fi

# 4. Create the symlink for your MCP skills
ln -sf "$SQUAD_DIR/.squad" "$TARGET_DIR/.squad"

# 5. Generate the .code-workspace file
cat <<EOF > "$WORKSPACE_ROOT/project.code-workspace"
{
  "folders": [
    { "name": "Apps", "path": "apps" },
    { "name": "Squad Skills", "path": "chynoweth-squad" }
  ],
  "settings": {
    "terminal.integrated.cwd": "/home/node/workspaces/apps"
  }
}
