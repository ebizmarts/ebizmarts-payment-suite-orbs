#!/bin/bash
PARAM=$(circleci env subst "${PARAM_VERSION}")
mv Magento${PARAM}-PreCompiled-NoSampleData.tar.gz Magento${PARAM}-PreCompiled.tar.gz