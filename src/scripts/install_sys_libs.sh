#!/bin/bash
PARAM=$(circleci env subst "${PARAM_LIBRARIES_TO_INSTALL}")
sudo apt-get install -y g++ $PARAM