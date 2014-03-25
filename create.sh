#!/bin/bash

########## CONFIG
#
# Election slug - used for DB (should be same as election in production)
slug="test1_1"

# Same as folder name with html files
election="kongres_26-27mar2014";

# Email that the token emails will be sent from
fromEmail="Piratsko glasovanje <test@piratskastranka.si>"

# Email subject of token emails
emailSubject="Glasovanje!"

########## END CONFIG

baseElections="elections/"$election

python create.py $slug \
"voters_lists/${slug}.txt" \
"${baseElections}/ballot.html" \
"${baseElections}/success.html" \
"${baseElections}/error.html" \
"${baseElections}/email.txt" \
"$fromEmail" "$emailSubject"
