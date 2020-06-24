require 'rest-client'
require 'json'
require 'bundler/setup'
Bundler.require(:default) # this will load every gem in our gemfile


require_relative'./elephant/cli.rb'
require_relative'./elephant/api.rb'
require_relative'./elephant/elephant.rb'


