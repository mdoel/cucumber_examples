require 'rubygems'
require 'pry'

require File.dirname(__FILE__) + '/../../app'

require 'capybara'
require 'capybara/cucumber'

Capybara.app = Application

require "selenium/webdriver"


Before('@javascript') do
  Capybara.run_server = false
  Capybara.current_driver = :selenium_chrome
  Capybara.app_host = 'http://localhost:3000'
  use_remote_driver if using_wsl?
  rackup = rackup_for_env
  @process = ChildProcess.build(rackup, '-p', '3000')
  @process.start
end

After('@javascript') do
  @process.stop
end

def rackup_for_env
  git_for_windows = ENV.keys.any? {|env_var| env_var.upcase =~ /\AMINGW/}
  powershell = ENV.keys.any? {|env_var| env_var.upcase =~ /\APSMODULEPATH/}
  if git_for_windows || powershell
    'rackup.bat'
  else
    'rackup'
  end
end

# Using Windows Subsystem for Linux or some other setup that requires
# webdriver to execute on a remote environment? This gist:
#
# https://gist.github.com/danwhitston/5cea26ae0861ce1520695cff3c2c3315
#
# provides tips for getting that setup. Note that you'll need to have the 
# selenium server running before executing these tests. In my case, I have
# created a simple shell script that I execute out of my bin directory from
# within git bash.
def using_wsl?
  ENV.keys.any? do |env_var|
    env_var.upcase =~ /\AWSL/
  end
end

def use_remote_driver
  Capybara.current_driver = :selenium_remote_chrome
  Capybara.register_driver 'selenium_remote_chrome'.to_sym do |app|
    Capybara::Selenium::Driver.new(app, browser: :remote, url: 'http://localhost:4445/wd/hub', desired_capabilities: :chrome)
  end 
end