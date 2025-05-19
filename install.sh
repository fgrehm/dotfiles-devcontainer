#!/usr/bin/env bash

cat <<-PATCH >> "${HOME}/.bashrc"

# Better ls, I don't know why this is not the default everywhere
alias ll='ls -alFh'

# Ruby stuff
alias be="bundle exec"
alias guard="bundle exec guard"
alias rspec="bundle exec rspec"
alias rc="bundle exec rails console"

# Prevent spring annoyances
export DISABLE_SPRING=true
PATCH
