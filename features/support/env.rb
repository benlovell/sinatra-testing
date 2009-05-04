ENV['RACK_ENV'] = 'test'

app_file = File.join(File.dirname(__FILE__), *%w[.. .. app.rb])
require app_file

Sinatra::Application.app_file = app_file

require 'spec/expectations'

require 'webrat'
Webrat.configure do |config|
  config.mode = :sinatra
end

World do
  session = Webrat::SinatraSession.new
  session.extend(Webrat::Matchers)
  session.extend(Webrat::HaveTagMatcher)
  session
end
