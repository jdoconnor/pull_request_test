#!/bin/bash
  if [ -z "$1" ]; then
      echo usage: $0 pull_request_url
      exit
  fi
  URL=$1
  hub $URL
  bundle
  rake db:migrate
  rake db:test:prepare
  rspec