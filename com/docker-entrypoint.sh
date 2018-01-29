#!/bin/sh
set -e
hexo clean && hexo server
exec "$@"
