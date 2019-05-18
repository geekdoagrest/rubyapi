require 'rspec' #for page.shoud etc
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

test = '';
while !test.index('Server is running') do
   test = %x(curl -sSL "http://browser:4444/wd/hub/status").strip
   sleep(1)
end

Capybara.register_driver :remote_chrome do |app|
  Capybara::Selenium::Driver.new(app,
  :browser => :remote,
  :desired_capabilities => :chrome,
  :url => "http://browser:4444/wd/hub")
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :remote_chrome
  config.app_host = 'nginx'
end
