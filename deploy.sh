#!/bin/bash

gitbook build
git checkout gh-pages
rm -fr ./docs/ && mkdir -p docs/
cp -r _book/* docs/
rm -fr ./docs/deploy.sh  # remove the deploy.sh
git add ./docs/
status=`git status -s`
status=${status:0:1}
echo "git status: $status"
if [[ $status = "M" || $status = "A" || $status = "D" || $status = "R" ]]; then
    echo "commit change"
    git commit -m "auto commit by deploy.sh"
    git push
fi
git checkout main
