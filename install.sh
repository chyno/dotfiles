echo "adding .gitconfit"
# symlink of git directory to my home directory
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# symlink certs folder to my home directory
# ln -s /workspaces/.codespaces/.persistedshare/dotfiles/certs ~/localcerts

# Update package information
sudo apt update -y

# Install Fish Shell
sudo apt install fish -y

#Install dependencies for pupeteer
sudo apt-get update && sudo apt-get install -y \
  libnss3 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libcups2 \
  libxcomposite1 \
  libxrandr2 \
  libxdamage1 \
  libxkbcommon0 \
  libgbm1 \
  libpango-1.0-0 \
  libasound2 \
  libpangocairo-1.0-0 \
  libgtk-3-0 \
  libxshmfence1
