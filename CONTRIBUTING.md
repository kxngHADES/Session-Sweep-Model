# Release rules

1. Branch off `main`, make your changes, open a PR into `main`.
2. Every PR must add a note under `## [Unreleased]` in `CHANGELOG.md`.
3. Pine files must keep the `//@version=N` header and an `indicator()`/`strategy()` call.
4. **To publish a release**, in the PR:
   - move your notes from `[Unreleased]` into a new `## [x.y.z] - YYYY-MM-DD` section (top-most version),
   - add the **`release`** label to the PR.
5. The version must be a new semver, greater than the latest tag, with non-empty notes. The PR Check workflow enforces this.
6. When the labeled PR is **merged**, the Release workflow tags `vX.Y.Z`, creates the GitHub Release with the changelog notes, and attaches the `.pine` file(s) and a zip.

PRs without the `release` label merge normally and publish nothing.
