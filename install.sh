ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# Variables
APPS_DIR="/home/node/workspace"
PERSONAL_REPO_DIR="/home/node/chynoweth-squad"

# Update package information
sudo apt update -y

npm install -g @github/copilot
npm install -g @bradygaster/squad-cli
