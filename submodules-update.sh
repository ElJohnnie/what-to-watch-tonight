#!/bin/bash

git submodule init
git submodule update --remote --merge

git add .
git commit -m "Atualização automática dos submódulos"

git push origin main
