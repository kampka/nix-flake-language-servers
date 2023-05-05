#!/usr/bin/env bash
#
node2nix \
	--nodejs-16 \
	--input node-packages.json \
	--output node-packages.nix \
	--composition node-composition.nix
