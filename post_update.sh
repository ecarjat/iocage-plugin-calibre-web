#!/bin/sh

./usr/local/migration/update.sh


echo "Update Calibre-Web installation"

git_url="https://github.com/janeczku/calibre-web.git"

echo "Re-init git"
rm -rf /usr/local/app/calibre-web/.git
git -C /usr/local/app/calibre-web init

echo "Setting git remote to ${git_url}"
git -C /usr/local/app/calibre-web remote add origin ${git_url}

echo "Reset calibre-web to latest master"
git -C /usr/local/app/calibre-web fetch origin master
git -C /usr/local/app/calibre-web reset --hard origin/master

echo "Git cleanup"
git -C /usr/local/app/calibre-web clean -f -d

echo "Installing requirements"
pip install -U -r /usr/local/app/calibre-web/requirements.txt
pip install -U -r /usr/local/app/calibre-web/optional-requirements.txt


sysrc "calibre_web_enable=YES"

service calibre_web restart
