#!/bin/bash

set -e
set -o pipefail

# Check that plugin is installed in expected location and required files are present
file /usr/share/cockpit/subscription-manager/index.html | grep -q "HTML document"
file /usr/share/cockpit/subscription-manager/manifest.json | grep -q "JSON"
