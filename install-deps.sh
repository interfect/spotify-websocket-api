#!/bin/sh

set -e -x
VER=$TRAVIS_PYTHON_VERSION

apt-get update -yqq || true
apt-get install -yqq python$VER libxml2-dev libxslt-dev
pip install -q requests protobuf cherrypy ws4py python-mpd2 lxml web.py --upgrade
