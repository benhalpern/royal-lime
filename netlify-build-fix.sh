#!/bin/bash

# https://github.com/netlify/build-image/issues/183#issuecomment-419199649

HUGO_FLAVOUR="hugo_extended"
HUGO_VERSION="0.47"

echo "start netlify-build-fix.sh"
echo "Hugo version: ${HUGO_VERSION}"

[ -z "${NF_IMAGE_VERSION}" ] && exit 0

rm -fr *.deb

echo "downloading libstdc..."
wget --no-clobber -q http://security.ubuntu.com/ubuntu/pool/main/g/gcc-5/libstdc++6_5.4.0-6ubuntu1~16.04.10_amd64.deb || exit 1

echo "downloading extended hugo..."
wget --no-clobber -q https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_FLAVOUR}_${HUGO_VERSION}_Linux-64bit.deb || exit 1

grep "hugo=" ~/.bashrc || echo "alias hugo='LD_LIBRARY_PATH=$(pwd)/tmp/usr/lib/x86_64-linux-gnu $(pwd)/tmp/usr/local/bin/hugo'" >> ~/.bashrc
find . -name '*.deb' -exec dpkg -x {} $(pwd)/tmp \;
rm -fr *.deb

echo "netlify-build-fix.sh done"

exit 0
