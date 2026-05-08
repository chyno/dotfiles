# Variables
APPS_DIR="/home/node/workspace"
PERSONAL_REPO_DIR="/home/node/chynoweth-squad"

# Update package information
sudo apt update -y

npm install -g @github/copilot
npm install -g @bradygaster/squad-cli

# 1. Clone your personal repository if not already present.
if [ ! -d "$PERSONAL_REPO_DIR" ]; then
  git clone https://github.com/chyno/chynoweth-squad.git "$PERSONAL_REPO_DIR"
fi

# 2. Symlink the ".squad" folder (or anything else you need) from your personal repo into ncarb-apps
ln -sfn "$PERSONAL_REPO_DIR/.squad" "$APPS_DIR/.squad"
ln -sfn "$PERSONAL_REPO_DIR/.copilot" "$APPS_DIR/.copilot"
# For more files, just replicate the ln -sf line above as needed

# Let user know
echo "Personal repo cloned and symlink created."
