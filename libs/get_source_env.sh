if [ ! -z $ENV_NEKORAY ]; then
  export COMMIT_SING_BOX_EXTRA="46b49dbf9e5732c2364674fe3a44c0aeb9784047"
  export COMMIT_MATSURI_XRAY="01208225ee7e508044cca8eb6776a117bcecd997"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
#  export COMMIT_LIBNEKO="a26f0dbb1467bd181f76e2560e956633d9637e9d"
fi
