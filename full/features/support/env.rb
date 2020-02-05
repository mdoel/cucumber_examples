require 'rubygems'
require 'pry'

require File.dirname(__FILE__) + '/../../app'

require 'capybara'
require 'capybara/cucumber'

Capybara.app = Application

require "selenium/webdriver"

Before('@js') do
  Capybara.run_server = false
  Capybara.current_driver = :selenium_chrome
  Capybara.app_host = 'http://localhost:9292'
end