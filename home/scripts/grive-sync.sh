#!/bin/sh

clientID=$( jq -r '.id' "$HOME/.grive-auth" )
clientSecret=$( jq -r '.secret' "$HOME/.grive-auth" )

grive -p $HOME/Desktop/GOOGLE -i ${clientID} --secret ${clientSecret}
