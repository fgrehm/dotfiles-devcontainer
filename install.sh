#!/usr/bin/env bash

cat <<-PATCH >> "${HOME}/.bashrc"

# Better ls
alias ll='ls -alFh'

# Ruby stuff
alias be="bundle exec"

# Prevent spring annoyances
export DISABLE_SPRING=true
PATCH
