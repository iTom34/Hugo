#!/bin/bash

set -e

docker build -t itom34/hugo:0.142.0 .
docker push itom34/hugo:0.142.0
