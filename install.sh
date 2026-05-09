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

# Remove .squad in workspace if it is not a symlink
if [ -e "$APPS_DIR/.squad" ] && [ ! -L "$APPS_DIR/.squad" ]; then
  rm -rf "$APPS_DIR/.squad"
fi

# Exclude .squad and .copilot from tracking, locally only, for this repo in Codespaces
echo ".squad" >> "$APPS_DIR/.git/info/exclude"
echo ".copilot" >> "$APPS_DIR/.git/info/exclude"

# 2. Symlink the ".squad" folder (or anything else you need) from your personal repo into ncarb-apps
ln -sfn "$PERSONAL_REPO_DIR/.squad" "$APPS_DIR/.squad"
ln -sfn "$PERSONAL_REPO_DIR/.copilot" "$APPS_DIR/.copilot"
ln -sfn "$PERSONAL_REPO_DIR/.github/agents/squad.agent.md" "$APPS_DIR/.github/agents/squad.agent.md"

# For more files, just replicate the ln -sf line above as needed


# Let user know
echo "Personal repo cloned and symlink created."
