# Release process

Releases are automated with [release-please](https://github.com/googleapis/release-please).
Do not edit `CHANGELOG.md`, the version in `session-sweep.pine`, or `.release-please-manifest.json` by hand.

1. Branch off `main` and open a PR into `main`.
2. Title the PR with a [Conventional Commit](https://www.conventionalcommits.org/) prefix (enforced by the PR Title check). PRs are squash-merged, so the title is what release-please reads:
   - `fix: ...` bumps the patch (1.0.0 -> 1.0.1)
   - `feat: ...` bumps the minor (1.0.0 -> 1.1.0)
   - `feat!: ...` or a `BREAKING CHANGE:` footer bumps the major (1.0.0 -> 2.0.0)
   - `docs:`, `chore:`, `ci:`, `refactor:`, `test:`, `build:` do not trigger a release on their own
3. After merging, release-please opens (and keeps updating) a PR titled `chore(main): release X.Y.Z`. It updates `CHANGELOG.md`, `.release-please-manifest.json` and the `VERSION` constant in `session-sweep.pine`.
4. **Merge that release PR** when you want to publish. It creates the tag `vX.Y.Z` and the GitHub Release, and attaches the `.pine` file and a zip.

Pine files must keep the `//@version=N` header, an `indicator()` call, and the `// x-release-please-version` marker on the `VERSION` line.
