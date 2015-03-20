#!/bin/sh

./site.hs rebuild
cd prod
git ls-files | xargs git rm
cp -rv ../_site/* .
git add .
git commit -m "Update: $(date)"
git push
cd ..
