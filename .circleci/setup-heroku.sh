#!/bin/bash
wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
mkdir -p /usr/local/lib /usr/local/bin
tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib
ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

cat > ~/.netrc << EOF
machine api.heroku.com
    login $HEROKU_EMAIL
    password $HEROKU_PASSWORD
EOF

cat ~./netrc