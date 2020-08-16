#!/bin/bash


for i in $(lynx -dump  https://opendistro.github.io/for-elasticsearch-docs/docs/install/plugins/  --list-inline --dont_wrap_pre | grep "elasticsearch-plugin install https" | grep -Eo "https://.*"); do wget "$i" -O "$(echo $i | sed 's/.*\/\(.*\)\/.*\.zip/\1/').zip"; done
