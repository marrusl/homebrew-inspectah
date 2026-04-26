# homebrew-inspectah

Homebrew tap for [inspectah](https://github.com/marrusl/inspectah) — inspect
RHEL/CentOS hosts and produce bootc image artifacts.

## Install

```
brew tap marrusl/inspectah
brew install inspectah
```

## What you get

The `inspectah` CLI — a Go wrapper that orchestrates container-based
inspection via [podman](https://podman.io).

### Subcommands

- **scan** — collect system state from a RHEL/CentOS host
- **fleet** — aggregate multiple inspection tarballs into a fleet report
- **refine** — generate Containerfiles and config trees from inspection data
- **architect** — produce migration architecture recommendations
- **build** — build a bootc container image from inspection artifacts
- **image** — manage container images used by inspectah

### Requirements

Podman must be installed separately for `scan`, `fleet`, `refine`, and
`architect` (these run inspectah inside a container). The `build` subcommand
invokes `podman build` directly.

### Versioning note

The Homebrew formula version tracks the inspectah project release (e.g.,
0.5.1). The `inspectah version` command shows the Go wrapper version, which
may differ. Both are correct — the formula version identifies which release
the binary was built from.

## Upgrade

```
brew upgrade inspectah
```

## Uninstall

```
brew uninstall inspectah
brew untap marrusl/inspectah
```
