#!/bin/bash
set -e

source libs/env_deploy.sh
ENV_NEKORAY=1
source libs/get_source_env.sh
cd $SRC_ROOT; cd ..
####
if [ ! -d "sing-box-extra" ]; then
  git clone https://github.com/MatsuriDayo/sing-box-extra.git
fi
cd sing-box-extra
git checkout "$COMMIT_SING_BOX_EXTRA"

source $SRC_ROOT/../sing-box-extra/libs/get_source_env.sh
NO_ENV=1 $SRC_ROOT/../sing-box-extra/libs/get_source.sh

cd $SRC_ROOT; cd ..

####
if [ ! -d "Xray-core" ]; then
  git clone -b neko-xray https://github.com/freegeekman/nekoray-xray-core Xray-core
fi
# pushd Xray-core
# git checkout "$COMMIT_MATSURI_XRAY"
# popd

cd $SRC_ROOT
