# Install Kubectl
    # Download the latest release:
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    # Validate Binary
        # curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
        # echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
    # Install kubectl
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    # If You don't have sudo priviliges
        # chmod +x kubectl
        # mkdir -p ~/.local/bin
        # mv ./kubectl ~/.local/bin/kubectl
    # Test to ensure the version you installed is up-to-date:
    # kubectl version --client

# Enable shell autocompletion
    ## System
    kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
    sudo chmod a+r /etc/bash_completion.d/kubectl
    ## user
    echo 'source <(kubectl completion bash)' >>~/.bashrc
    # Enable bash autocompletion in current session of shell
    source ~/.bashrc


# Install kubectl convert plugin
    # download latest version
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl-convert"
    # validate binary
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl-convert.sha256"
    echo "$(cat kubectl-convert.sha256) kubectl-convert" | sha256sum --check
    # Install kubectl-convert
    sudo install -o root -g root -m 0755 kubectl-convert /usr/local/bin/kubectl-convert
    # Verify plugin is successfully installed
    # kubectl convert --help
    #clean up the installation files
    rm kubectl-convert kubectl-convert.sha256
