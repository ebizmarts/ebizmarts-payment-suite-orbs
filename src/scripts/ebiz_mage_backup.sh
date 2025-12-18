#!/bin/bash
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
PARAM=$(circleci env subst "${PARAM_VERSION}")
# If for any reason the TO variable is not set, default to "World"
wget --quiet https://ebizmartsbackup.s3.amazonaws.com/Magento${PARAM}-PreCompiled-NoSampleData.tar.gz