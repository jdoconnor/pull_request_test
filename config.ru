# This file is used by Rack-based servers to start the application.

require 'rubygems'
require 'bundler'

Bundler.require

require './pull_request_test'
run PullRequestTest
