#!/bin/bash

# Report the value for Cloudflare Zero Trust data sent and received
# Stats are for latest connection session
# Last Edit: 20220213 - jkb

# Sent and Received
if [ -e /Applications/Cloudflare\ WARP.app ]; then
	dataTransfer=$(/Applications/Cloudflare\ WARP.app/Contents/Resources/warp-cli warp-stats | awk '/Sent/ {print $2,$4}')
else
	dataTransfer="Cloudflare Zero Trust is Not Installed"
fi
# Report the result to the JSS.
echo "<result>$dataTransfer</result>"