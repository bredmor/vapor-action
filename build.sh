#!/usr/bin/env bash

docker build -t bredmorg/vapor-action:latest .

docker run --interactive --tty --rm  \
  -e GITHUB_SECRET=secret \
  -e VAPOR_API_TOKEN=secret \
  bredmorg/vapor-action:latest list
