#!/bin/bash

# Report the value for Cloudflare Zero Trust last check-in ("handshake") with console
# Last Edit: 20220213 - jkb


if [ -e /Applications/Cloudflare\ WARP.app ]; then
	handshakeValue=$(/Applications/Cloudflare\ WARP.app/Contents/Resources/warp-cli warp-stats | awk '/handshake/ {print $5}')
else
	handshakeValue="Cloudflare Zero Trust is Not Installed"
fi
# Report the result to the JSS.
echo "<result>$handshakeValue</result>"