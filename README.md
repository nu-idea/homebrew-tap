# nu-idea/homebrew-tap

Homebrew casks by Nu Idea.

```bash
brew install --cask nu-idea/tap/agent-bar
```

| Cask | What it is |
|---|---|
| [agent-bar](https://github.com/nu-idea/agent-bar) | Floating macOS widget: which Claude Code, Codex and Hermes sessions are working and which are waiting for you |

## Notes

- Homebrew asks you to trust third-party taps. Installing by the full name, as above, trusts only this cask.
- agent-bar is not signed with a paid Apple Developer ID. The cask removes the quarantine flag after install, so macOS doesn't block the first launch.
- Uninstall: `brew uninstall --cask agent-bar`. Add `--zap` to also remove its settings and log.
