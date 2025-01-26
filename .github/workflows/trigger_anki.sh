#!/bin/bash
exit $(curl -s https://api.github.com/repos/ankitects/anki/releases | jq -r "first | ((now - (.published_at | fromdateiso8601) )  / (60*60*24)  | trunc)")
