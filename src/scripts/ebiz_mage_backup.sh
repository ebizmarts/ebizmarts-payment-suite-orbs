#!/bin/bash
PARAM=$(circleci env subst "${PARAM_VERSION}")
wget --quiet https://ebizmartsbackup.s3.amazonaws.com/Magento${PARAM}-PreCompiled.tar.gz