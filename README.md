# homebrew-inspectah

Homebrew tap for [inspectah](https://github.com/marrusl/inspectah) -- inspect
RHEL/CentOS hosts and produce bootc image artifacts.

Full documentation: https://marrusl.github.io/inspectah/

## Install

```
brew tap marrusl/inspectah
brew install inspectah
```

Requires macOS on Apple Silicon (arm64).

## What you get

The `inspectah` CLI -- a Rust-based tool for RHEL/CentOS migration analysis
and bootc image generation.

### Subcommands

- **scan** -- collect system state from a RHEL/CentOS host
- **fleet** -- aggregate multiple scans into a fleet report
- **refine** -- generate Containerfiles and config trees from scan data
- **architect** -- produce migration architecture recommendations
- **build** -- build a bootc container image from inspection artifacts
- **image** -- manage container images used by inspectah

## Upgrade

```
brew upgrade inspectah
```

## Uninstall

```
brew uninstall inspectah
brew untap marrusl/inspectah
```
