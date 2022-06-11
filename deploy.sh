#!/bin/bash

git pull --rebase --autostash  # pull the latest contents
git add .
status=`git status -s`
status=${status:0:1}
echo "git status: ${status}"
if [[ $status = "M" || $status = "A" || $status = "D" || $status = "R" ]]; then
    echo "contents changed, committing..."
    branch=`git symbolic-ref --short HEAD`
    git commit -m "auto commit by deploy.sh from branch:${branch}"
    git push
fi

rm -fr ./_book/
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
    echo "contents changed, committing..."
    branch=`git symbolic-ref --short HEAD`
    git commit -m "auto commit by deploy.sh from branch:${branch}"
    git push
fi
git checkout main
