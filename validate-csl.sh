#!/bin/sh

csl_filename=$(basename $1)
csl_filepath="$(cd $(dirname $1); pwd)/$csl_filename"

docker run --rm --mount type=bind,src=$csl_file,dst=/var/csl/style/$csl_filename \
  customcommander/csl-dev jing -c /var/csl/schema/csl.rnc /var/csl/style/$csl_filename 2>/dev/null