#!/bin/bash

fluxctl list-controllers | grep $CONTROLLER | while read controller container image release policy
do
    while true
    do
        if [[ "$image" =~ "$COMMIT_SHA" ]]; then
            echo "Autorelease finished by Flux"
            break
        else 
            echo "Waiting for Autorelease by Flux, current image still $image"
            sleep 10
        fi
    done
done 