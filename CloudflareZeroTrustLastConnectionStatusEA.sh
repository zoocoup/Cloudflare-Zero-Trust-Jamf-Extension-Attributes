#!/bin/bash

# Report the value for Cloudflare Zero Trust last connection status
# Last Edit: 20220213 - jkb


if [ -e /Applications/Cloudflare\ WARP.app ]; then
	connectionStatus=$(/Applications/Cloudflare\ WARP.app/Contents/Resources/warp-cli status | awk '/Status/ {print $3}')
else
	connectionStatus="Cloudflare Zero Trust is Not Installed"
fi
# Report the result to the JSS.
echo "<result>$connectionStatus</result>"