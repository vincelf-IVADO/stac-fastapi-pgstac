#!/bin/bash
echo "# -----------------------------------------------------------------------"
echo "script $0"

set -ex

date

tag_version=$1

# remove tag local
git tag -d ${tag_version} || true

# remove tag remote
git push --delete origin ${tag_version} || true

# create tag
git tag ${tag_version}

# push tag to remote
git push origin ${tag_version}

date