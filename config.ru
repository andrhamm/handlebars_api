require 'rubygems'
require 'bundler'

Bundler.require :unicorn

require File.join(File.dirname(File.expand_path(__FILE__)), 'lib/api.rb')

run Sinatra::Application
