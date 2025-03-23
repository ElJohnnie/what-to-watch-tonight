#!/bin/bash

GIT_USER=$(git config user.name)

git submodule init

git submodule update --remote --merge wtwt-back-end
git submodule update --remote --merge wtwt-front-end
git submodule update --remote --merge wtwt-kmeans-algorithm

git add wtwt-back-end wtwt-front-end wtwt-kmeans-algorithm

git add .

git commit -m "$GIT_USER: Atualização por script dos submódulos"

git push origin main
