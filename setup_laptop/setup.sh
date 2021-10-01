chsh -s /bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask brave-browser
brew install --cask visual-studio-code
brew install --cask bitwarden
brew install --cask iterm2
brew install --cask docker
brew install ansible
brew install docker
brew install tfenv #terraform
brew install lynx #text webrowser
brew install kubectx
brew install kube-ps1 # necessary for bash_profile



#ssh-keygen -t ed25519 -C "{{ email }}" # creates ssh key