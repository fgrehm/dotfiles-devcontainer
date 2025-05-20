#!/usr/bin/env bash

# Function to check if content exists in file
content_exists() {
    local file="$1"
    local content="$2"
    grep -q "$content" "$file"
}

# Content to be added
CONTENT=$(cat <<'EOF'
# Better ls, I don't know why this is not the default everywhere
alias ll='ls -alFh'

# Ruby stuff
alias be="bundle exec"
alias guard="bundle exec guard"
alias rspec="bundle exec rspec"
alias rc="bundle exec rails console"

# Prevent spring annoyances
export DISABLE_SPRING=true
EOF
)

# Check if content already exists in .bashrc
if ! content_exists "${HOME}/.bashrc" "alias ll='ls -alFh'"; then
    echo "Installing dotfiles..."
    echo "$CONTENT" >> "${HOME}/.bashrc"
    echo "Dotfiles installed successfully!"
else
    echo "Dotfiles already installed, skipping..."
fi
