#!/bin/bash
COMMIT_MESSAGE=" - auto_push.sh"
DATE=$(date "+%Y-%m-%d")

[ full_terminal.script -nt full_terminal.html ] && cat full_terminal.script | bash ansi2html.sh --bg=dark > full_terminal.html

#while true; do
  git add *
  git commit -m "${DATE}${COMMIT_MESSAGE}"
  git push -u origin master
#  sleep 10s
#done

