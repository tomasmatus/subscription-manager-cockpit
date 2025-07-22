#!/bin/bash

set -e
set -o pipefail
set -x

# Check that plugin is installed in expected location and required files are present
file /usr/share/cockpit/subscription-manager/index.html | grep -q "HTML document, ASCII text"
file /usr/share/cockpit/subscription-manager/manifest.json | grep -q "JSON"
