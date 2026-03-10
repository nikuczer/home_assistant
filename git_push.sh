#!/bin/bash
cd /config
git add -A
git diff --cached --quiet && echo 'Rien a commiter' && exit 0
git commit -m "Config HA - $(date '+%Y-%m-%d %H:%M')"
git push origin main
