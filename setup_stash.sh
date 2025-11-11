#!/bin/bash

# Elimina els repositori si existeix
#if [ -d ~/git_stash ]; then
#    rm -rf ~/git_stash
#fi

#mkdir -p ~/git_stash
#cd ~/git_stash
git init
git branch -m main
echo "# Reserva de canvis" > README.md
git add .
git commit -m "Commit inicial"
git checkout -b feature/pull_request
echo "Altres canvis" >> README.md
git commit -a -m "Altres canvis"
git checkout main
git log
