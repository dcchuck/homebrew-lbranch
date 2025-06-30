# homebrew-lbranch

A Homebrew “tap” formula for installing [lbranch](https://github.com/dcchuck/lbranch), the Python CLI for managing Git branches.

## Tap & Install

```bash
# 1. Tap the repo
brew tap dcchuck/lbranch

# 2. Install lbranch
brew install lbranch

# 3. Verify
lbranch --version
```

## Updating Formula

After releasing a new version to PyPI:

```bash
# 1. Get SHA256 of new release
curl -sL https://pypi.org/packages/source/l/lbranch/lbranch-0.1.3.tar.gz | shasum -a 256

# 2. Update Formula/lbranch.rb with new version and sha256

# 3. Test locally
brew install --build-from-source ./Formula/lbranch.rb
brew test lbranch

# 4. Commit and push
git add Formula/lbranch.rb
git commit -m "Update lbranch to 0.1.3"
git push
```
