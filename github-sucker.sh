#!/bin/sh

gh repo list $1 --limit 1000 | while read -r repo _; do
  echo "Sucking $repo ..."
  gh repo clone "$repo" "$repo" -- -q 2>/dev/null || (
    cd "$repo"
    echo "   Updating ..."
    git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch -q --track "${remote#origin/}" "$remote" 2>/dev/null; done
    git fetch --all -q
    git pull --all -q
  )
  echo "-> $repo up-to-date"
done
