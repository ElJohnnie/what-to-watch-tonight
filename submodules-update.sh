#!/bin/bash

GIT_USER=$(git config user.name)

git submodule init
git submodule update --remote --merge

git add .
git commit -m "$GIT_USER: Atualização por script dos submódulos"

git push origin main
