# github-sucker
Keep up-to-date a local backup of organisation's github repositories.

## Setup

Install on your system the official GitHub CLI tool, `gh`.

First time only: login with `gh` for private repos, and follow prompts:

```
gh auth login
```

Clone the repository:

```
git clone https://github.com/ahresse/github-sucker
cd github-sucker
```

Then run:

```
./github-sucker.sh <my_organisation>
```

This will clone and keep up to date repositories in the `my_organisation` directory.
