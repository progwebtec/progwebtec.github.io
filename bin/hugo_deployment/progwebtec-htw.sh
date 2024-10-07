if [ -z "${DEPLOY_HOST}" ]; then
  echo "DEPLOY_HOST needs to be set"
  exit 1
fi

zip -r website ./public_html
scp -r nginx $DEPLOY_HOST:~
scp compose.yaml $DEPLOY_HOST:~
scp website.zip $DEPLOY_HOST:~
ssh $DEPLOY_HOST "mkdir -p public_html"
ssh $DEPLOY_HOST "unzip -o website.zip"
ssh $DEPLOY_HOST "rm website.zip"
rm website.zip
ssh $DEPLOY_HOST "docker compose down"
ssh $DEPLOY_HOST "docker compose up -d"
