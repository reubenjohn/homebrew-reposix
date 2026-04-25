# homebrew-reposix

Homebrew tap for [reposix](https://github.com/reubenjohn/reposix) — REST issue
trackers as a git-native partial clone for autonomous coding agents.

## Install

```bash
brew install reubenjohn/reposix/reposix
```

This installs both the `reposix` CLI and the `git-remote-reposix` helper that
`git fetch` and `git push` invoke transparently for `reposix::` remotes.

## What ships

| Binary | Purpose |
|---|---|
| `reposix` | The top-level CLI: `init`, `sim`, `doctor`, `list`, `cost`, `gc`, `history`, `refresh`, `spaces`, `tokens`. |
| `git-remote-reposix` | The git remote helper that git auto-invokes for `reposix::` URLs. Never run it directly. |

## How this tap is updated

Formulas under `Formula/` are auto-generated and pushed by the
[reposix release workflow](https://github.com/reubenjohn/reposix/actions/workflows/release.yml)
on every `v*` tag. Don't edit them by hand.

## Other install paths

If you don't use Homebrew:

- **Linux/macOS shell installer**: `curl --proto '=https' --tlsv1.2 -LsSf https://github.com/reubenjohn/reposix/releases/latest/download/reposix-installer.sh | sh`
- **Windows PowerShell**: `irm https://github.com/reubenjohn/reposix/releases/latest/download/reposix-installer.ps1 | iex`
- **cargo binstall**: `cargo binstall reposix-cli reposix-remote`
- **From source**: `cargo install --git https://github.com/reubenjohn/reposix reposix-cli reposix-remote`

## License

MIT — same as the upstream reposix project.
