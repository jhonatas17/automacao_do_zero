require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium # => Firefox 
end  

Capybara.default_max_wait_time = 5