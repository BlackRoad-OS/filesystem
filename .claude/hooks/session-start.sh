#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

# Install Node.js dependencies if present
if [ -f "package.json" ]; then
  npm install
fi

# Install Python dependencies if present
if [ -f "requirements.txt" ]; then
  pip install -r requirements.txt
elif [ -f "pyproject.toml" ]; then
  pip install -e .
fi

# Install Rust dependencies if present
if [ -f "Cargo.toml" ]; then
  cargo build
fi

# Install Go dependencies if present
if [ -f "go.mod" ]; then
  go mod download
fi

# Install Ruby dependencies if present
if [ -f "Gemfile" ]; then
  bundle install
fi
