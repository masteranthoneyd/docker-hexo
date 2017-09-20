#!/bin/sh
set -e

GIT_USER_NAME=${GIT_USER_NAME:-yangbingdong}

GIT_USER_MAIL=${GIT_USER_MAIL:-yangbingdong1994@gmail.com}

NEW_USER_NAME=${NEW_USER_NAME:-ybd}

/usr/sbin/usermod -l ${NEW_USER_NAME} ${USER_NAME}

/usr/sbin/usermod -c ${NEW_USER_NAME} ${NEW_USER_NAME}

/usr/sbin/groupmod -n ${NEW_USER_NAME} ${USER_NAME}

chown -R ${NEW_USER_NAME}.${NEW_USER_NAME} /home/${USER_NAME}/blog

chmod -R 766 /home/${USER_NAME}/blog

git config --system user.name $GIT_USER_NAME

git config --system user.email $GIT_USER_MAIL

su ${NEW_USER_NAME} 

