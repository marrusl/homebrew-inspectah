# homebrew-inspectah

Homebrew tap for [inspectah](https://github.com/marrusl/inspectah) — inspect
RHEL/CentOS hosts and produce bootc image artifacts.

## Install

```
brew tap marrusl/inspectah
brew install inspectah
```

## What you get

The `inspectah` CLI with three subcommands:

- **inspect** — collect system state from a RHEL/CentOS host (requires
  [podman](https://podman.io); install separately if needed)
- **fleet** — aggregate multiple inspection tarballs into a fleet report
- **refine** — generate Containerfiles and config trees from inspection data

Shell completions for bash, zsh, and fish are installed automatically.

## Upgrade

```
brew upgrade inspectah
```

## Uninstall

```
brew uninstall inspectah
brew untap marrusl/inspectah
```
