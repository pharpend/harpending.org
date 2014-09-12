#!/bin/sh

./site/site rebuild
cd ..
cp -rf ./pharpend/_site/* ./pharpend.github.io/*
cd pharpend.github.io/
git a .
git commit -am "$(date). See hakyll branch."
git push
cd ../pharpend/
