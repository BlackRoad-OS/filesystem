# Filesystem

**BlackRoad OS Filesystem** -- the sovereign, privacy-first filesystem layer for the BlackRoad OS ecosystem.

## Overview

Filesystem is a core component of [BlackRoad OS](https://blackroad.io), providing the foundational file and storage management layer. Built with sovereignty and privacy at its core, it operates fully offline with no telemetry, tracking, or external dependencies.

## Principles

- **Sovereignty** -- Users own their data and infrastructure
- **Privacy** -- No telemetry, tracking, or external data collection
- **Offline-First** -- All core features work without internet connectivity
- **Security** -- Designed with security best practices throughout
- **No Vendor Lock-In** -- Open interoperability, no proprietary traps

## Getting Started

### Prerequisites

Ensure you have the appropriate toolchain installed for your environment (Node.js, Python, Rust, Go, or Ruby).

### Clone the Repository

```bash
git clone https://github.com/BlackRoad-OS/filesystem.git
cd filesystem
```

### Development with Claude Code

This repository includes a [Claude Code SessionStart hook](.claude/hooks/session-start.sh) that automatically installs project dependencies when running in remote (web) environments. Supported package managers:

- **Node.js** -- `npm install` (via `package.json`)
- **Python** -- `pip install -r requirements.txt` or `pip install -e .` (via `requirements.txt` / `pyproject.toml`)
- **Rust** -- `cargo build` (via `Cargo.toml`)
- **Go** -- `go mod download` (via `go.mod`)
- **Ruby** -- `bundle install` (via `Gemfile`)

The hook is idempotent and only activates when `CLAUDE_CODE_REMOTE=true`.

## Project Structure

```
filesystem/
├── .claude/                  # Claude Code configuration
│   ├── hooks/
│   │   └── session-start.sh  # Auto-dependency installer for web sessions
│   └── settings.json         # Claude Code hook settings
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md     # Bug report template
│   │   └── feature_request.md # Feature request template
│   └── PULL_REQUEST_TEMPLATE.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── LICENSE
└── README.md
```

## Contributing

We welcome contributions! Please read our [Contributing Guide](CONTRIBUTING.md) and [Code of Conduct](CODE_OF_CONDUCT.md) before submitting issues or pull requests.

### Quick Start

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-feature`)
3. Make your changes and commit (`git commit -m 'feat: add my feature'`)
4. Push to your fork (`git push origin feature/my-feature`)
5. Open a Pull Request

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines, commit message conventions, and coding standards.

## License

Proprietary -- Copyright (c) 2024-2026 BlackRoad OS, Inc. All Rights Reserved.

See [LICENSE](LICENSE) for full terms.

## Contact

- **GitHub Issues** -- For bug reports and feature requests
- **Email** -- blackroad.systems@gmail.com
- **Website** -- [blackroad.io](https://blackroad.io)

---

Part of the [BlackRoad OS](https://blackroad.io) ecosystem.
