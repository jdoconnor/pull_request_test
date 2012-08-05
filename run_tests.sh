#!/bin/bash
  if [ -z "$1" ]; then
      echo usage: $0 sourcedir
      exit
  fi
  echo "in file"
  SRCDIR=$1
  cd $SRCDIR
  ls
  bundle --gemfile Gemfile
  rake db:migrate
  rake db:test:prepare
  echo rspec spec/models/user_spec.rb
