#!/bin/bash

# Report the value for Cloudflare Zero Trust user sign in state. 
# If equals “Team”, then signed in. If equals "Free" then not
# See also ./warp-cli get-organization
# Last Edit: 20220213 - jkb

# Sent and Received
if [ -e /Applications/Cloudflare\ WARP.app ]; then
	userSignInState=$(/Applications/Cloudflare\ WARP.app/Contents/Resources/warp-cli account | awk '/type/ {print $3}')
else
	userSignInState="Cloudflare Zero Trust is Not Installed"
fi
# Report the result to the JSS.
echo "<result>$userSignInState</result>"