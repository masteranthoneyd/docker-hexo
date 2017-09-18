#!/bin/sh
set -e

GIT_USER_NAME=${GIT_USER_NAME:-"yangbingdong"}

GIT_USER_MAIL=${GIT_USER_MAIL:-"yangbingdong1994@gmail.com"}

git config --global user.name $GIT_USER_NAME

git config --global user.email $GIT_USER_MAIL
