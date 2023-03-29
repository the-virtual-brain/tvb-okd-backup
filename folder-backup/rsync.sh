#!/bin/sh

echo "Executing rsync as an one time run..."
eval rsync -r  $@
echo "Successful execution"

