require 'rubygems'
require 'bundler/setup'

require File.dirname(__FILE__) + '/../../app'
Dir["/../../lib/*.rb"].each {|file| require file}

require 'rack/test'
require 'capybara/cucumber'
require 'rspec'
require 'rspec/expectations'

Capybara.app = Sinatra::Application