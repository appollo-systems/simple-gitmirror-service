#!/usr/bin/env bash
date --rfc-3339='seconds'

update() {
  pushd $1 > /dev/null
  echo updating $1
  git fetch -f
  popd > /dev/null
}

update ams
update aup
update camundaServices
update dockerstack
