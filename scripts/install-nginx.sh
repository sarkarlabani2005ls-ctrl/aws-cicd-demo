#!/bin/bash
set -euo pipefail
dnf install -y nginx
rm -f /usr/share/nginx/html/index.html
