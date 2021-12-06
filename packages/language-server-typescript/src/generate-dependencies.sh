#!/usr/bin/env nix-shell
#! nix-shell -i bash -p yarn2nix

set -eu
set -o pipefail

VERSION="$(cat VERSION)"
REPO="https://raw.githubusercontent.com/typescript-language-server/typescript-language-server/v${VERSION}"

trap "rm -f yarn.lock" EXIT

curl "${REPO}/package.json" -o package.json
curl "${REPO}/yarn.lock" -o yarn.lock

yarn2nix --lockfile=yarn.lock > yarn-dependencies.nix

