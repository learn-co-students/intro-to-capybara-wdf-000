# Write your tests here!
# Load RSpec and capybara

require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

#Configure RSpec
RSpec.configure do |config|
  #Mixing the Capybara functionality into RSpec 
  config.include Capybara::DSL 
  config.order = 'default'
end

#Define the application we're testing
def app 
  #Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end

#Configure Capybara to test against the application above.
Capybara.app = app
