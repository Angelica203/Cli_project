require 'rest-client'
require 'json'
require 'bundler/setup'
# Bundler.require(:default)

require 'dotenv/load'

require 'digest'
require_relative'./comic_vine/cli.rb'
require_relative'./comic_vine/api.rb'
require_relative'./comic_vine/comic.rb'


