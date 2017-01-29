#!/usr/bin/env bash
if [ $PYTHON_INSTALL_METHOD == "tox" ]; then
  tox -e $(tox -l | grep $PYTHON_MAJOR | tr "\n" ",")
else
  python setup.py install
  coverage run --source werobot -m py.test
fi