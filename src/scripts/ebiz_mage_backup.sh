#!/bin/bash
PARAM=$(circleci env subst "${PARAM_VERSION}")
wget https://ebizmartsbackup.s3.amazonaws.com/Magento"${PARAM}"-PreCompiled.tar.gz