# homebrew-yoinkc

Homebrew tap for [yoinkc](https://github.com/marrusl/yoinkc) — inspect
RHEL/CentOS hosts and produce bootc image artifacts.

## Install

```
brew tap marrusl/yoinkc
brew install yoinkc
```

## What you get

The `yoinkc` CLI with three subcommands:

- **inspect** — collect system state from a RHEL/CentOS host (requires
  [podman](https://podman.io); install separately if needed)
- **fleet** — aggregate multiple inspection tarballs into a fleet report
- **refine** — generate Containerfiles and config trees from inspection data

Shell completions for bash, zsh, and fish are installed automatically.

## Upgrade

```
brew upgrade yoinkc
```

## Uninstall

```
brew uninstall yoinkc
brew untap marrusl/yoinkc
```
