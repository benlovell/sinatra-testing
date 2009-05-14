ENV['RACK_ENV'] = 'test'

require "app"
run Sinatra::Application