OMMIT_MESSAGE=" - auto_push.sh"
DATE=$(date "+%Y-%m-%d")
while true; do
  git add *
  git commit -m "${DATE}${COMMIT_MESSAGE}"
  git push -u origin master
  sleep 10s
done

