#!/usr/bin/env bash
NF_IMAGE_VERSION=1 bash ./netlify-build-fix.sh && LD_LIBRARY_PATH=$(pwd)/tmp/usr/lib/x86_64-linux-gnu $(pwd)/tmp/usr/local/bin/hugo
