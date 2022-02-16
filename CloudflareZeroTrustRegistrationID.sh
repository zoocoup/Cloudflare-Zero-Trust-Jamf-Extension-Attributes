#!/bin/bash

# Report the value for Cloudflare Zero Trust RegistrationID
# Is a unique identifier. Exists regardless of sign-in status
# Last Edit: 20220213 - jkb

# Sent and Received
if [ -e /Applications/Cloudflare\ WARP.app ]; then
	regID=$(/Applications/Cloudflare\ WARP.app/Contents/Resources/warp-cli account | awk '/Registration/ {print $3}')
else
	regID="Cloudflare Zero Trust is Not Installed"
fi
# Report the result to the JSS.
echo "<result>$regID</result>"