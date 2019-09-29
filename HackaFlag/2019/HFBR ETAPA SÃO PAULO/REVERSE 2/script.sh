#!/bin/bash

load=""

function crack {
    while read line; do
        if echo "$load$line" | ./chall | grep -v "#T"; then
            load="$load$line"
            echo $load
            cond
        fi
    done < wordlist
    cond
}

function cond {
    if echo $load | egrep -q "}"; then
        echo "Done!"
        exit
    else
        crack
    fi
}

cond

