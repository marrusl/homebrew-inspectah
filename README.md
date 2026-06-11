# homebrew-inspectah

Homebrew tap for [inspectah](https://github.com/marrusl/inspectah) -- inspect
RPM-based Linux systems and produce bootc image artifacts.

Full documentation: https://marrusl.github.io/inspectah/

## Install

```
brew tap marrusl/inspectah
brew install inspectah
```

Requires macOS on Apple Silicon (arm64).

## What you get

The `inspectah` CLI -- a Rust-based tool for analyzing RPM-based Linux systems
and producing bootc image artifacts.

**Note:** `inspectah scan` requires a Linux host (it inspects the running
system). On macOS, use `refine`, `fleet`, `architect`, and `build` to work
with scan tarballs collected from your Linux hosts.

### Subcommands

- **scan** -- collect system state from an RPM-based Linux host (Linux only)
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
