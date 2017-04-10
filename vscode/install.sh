#!/bin/sh

while read p; do
  echo "> code --install-extension" $p
  code --install-extension $p
done <vscode/extensions.txt
