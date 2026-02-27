#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Ensure CLAUDE_PROJECT_DIR is set and points to an existing directory
if [ -z "${CLAUDE_PROJECT_DIR:-}" ]; then
  echo "Error: CLAUDE_PROJECT_DIR is not set or is empty; aborting session-start hook." >&2
  exit 1
fi

if [ ! -d "$CLAUDE_PROJECT_DIR" ]; then
  echo "Error: CLAUDE_PROJECT_DIR '$CLAUDE_PROJECT_DIR' does not exist or is not a directory; aborting session-start hook." >&2
  exit 1
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
