ENV['RACK_ENV'] = 'test'

app_file = File.join(File.dirname(__FILE__), *%w[.. .. app.rb])
require app_file

Sinatra::Application.app_file = app_file

require 'spec/expectations'
require 'webrat/selenium'

Webrat.configure do |config|
  config.mode = :selenium
  config.application_port = 4567
  config.application_framework = :sinatra
end

World(Webrat::Methods)
World(Webrat::Selenium::Methods)
World(Webrat::Selenium::Matchers)
