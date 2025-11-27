#!/bin/bash

echo "🚀 M4 Mac – FREE Developer Environment Setup Started..."

# --- Homebrew ---
echo "🍺 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Essentials ---
echo "📦 Installing essentials..."
brew install git curl wget unzip

# --- nvm ---
echo "📦 Installing NVM..."
brew install nvm
mkdir -p ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc

# --- Node.js LTS + Latest ---
echo "🟢 Installing Node.js (LTS + Latest)..."
nvm install --lts
nvm install node

# --- Yarn / pnpm / bun ---
echo "📦 Installing Yarn / pnpm / bun..."
npm install -g yarn pnpm bun

# --- .NET 9 SDK (FREE) ---
echo "🟣 Installing .NET 9 SDK..."
curl -LO https://download.visualstudio.microsoft.com/download/pr/dotnet-sdk-9.0.100-macos-arm64.pkg
sudo installer -pkg dotnet-sdk-9.0.100-macos-arm64.pkg -target /

# --- VS Code ---
echo "💻 Installing Visual Studio Code..."
brew install --cask visual-studio-code

# --- Azure Data Studio ---
echo "🗄️ Installing Azure Data Studio..."
brew install --cask azure-data-studio

# --- DBeaver CE (FREE alternative to TablePlus) ---
echo "🗄️ Installing DBeaver CE..."
brew install --cask dbeaver-community

# --- Docker Desktop ---
echo "🐳 Installing Docker Desktop..."
brew install --cask docker

# --- iTerm2 ---
echo "🖥️ Installing iTerm2..."
brew install --cask iterm2

# --- Oh My Zsh ---
echo "⌨️ Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# --- Powerlevel10k ---
echo "🎨 Installing Powerlevel10k..."
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# --- Postman ---
echo "🧪 Installing Postman..."
brew install --cask postman

# --- Parallels Client (FREE RDP client) ---
echo "🖥️ Installing Parallels Client..."
brew install --cask parallels-client

echo "🎉 FREE Developer Setup Completed! Please restart your terminal."
