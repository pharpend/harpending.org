#!/bin/sh

./site/site rebuild
cd ..
cp -rf ./pharpend/_site/* ./pharpend.github.io/*
cd pharpend.github.io/
git commit -am "$(date)"
git push
cd ../pharpend/
