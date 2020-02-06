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
  Capybara.app_host = 'http://localhost:3000'
  @process = ChildProcess.build('rackup', '-p', '3000')
  @process.start
end

After('@js') do
  @process.stop
end