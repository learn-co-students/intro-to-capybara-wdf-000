require 'capybara/rspec'
require 'capybara/dsl'

RSpec.configure do |config|
  config.include Capybara::DSL
  config.order = 'default'
end

def app # Define the application we're testing
  # Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end
# Configure Capybara to test against the application above.
Capybara.app = app
