echo "adding .gitconfig"
# symlink of git directory to my home directory
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git/.gitconfig ~/.gitconfig

# symlink certs folder to my home directory
# ln -s /workspaces/.codespaces/.persistedshare/dotfiles/certs ~/localcerts

# Update package information
sudo apt update -y

npm install -g @github/copilot
npm install -g @bradygaster/squad-cli

# Define the directory you want to ignore (change 'my_private_folder' to your actual folder name)
PRIVATE_DIR=".squad/"

# Check if we are in a git repository and append to the local exclude file
if [ -d ".git" ]; then
    echo "Adding $PRIVATE_DIR to local git exclude..."
    
    # Ensure the directory is in the file, but only add it if it's not already there
    grep -qxF "$PRIVATE_DIR" .git/info/exclude || echo "$PRIVATE_DIR" >> .git/info/exclude
fi
