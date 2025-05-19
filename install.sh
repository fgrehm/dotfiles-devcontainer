#!/usr/bin/env bash

cat <<-PATCH >> "${HOME}/.bashrc"

# Better ls
alias ll='ls -alFh'

# Ruby stuff
alias be="bundle exec"
alias guard="bundle exec guard"
alias rspec="bundle exec rspec"

# Prevent spring annoyances
export DISABLE_SPRING=true
PATCH
