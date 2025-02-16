#!/bin/bash
LANDO=$(command -v lando)
if [ -z "$LANDO" ]; then
  echo "lando is not installed"
  exit 1
fi
NPM=$(command -v npm)
if [ -z "$NPM" ]; then
  echo "npm is not installed"
  exit 1
fi
$LANDO plugin-add https://github.com/uberhacker/apache-mod-markdown
cd ~/.lando/plugins/apache-mod-markdown
$NPM install
