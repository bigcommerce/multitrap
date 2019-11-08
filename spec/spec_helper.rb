# frozen_string_literal: true

require 'bigcommerce/multitrap'

require 'bundler'
require 'pry'
require 'rspec/wait'

RSpec.configure do |c|
  c.order = 'random'
  c.color = true
  c.wait_timeout = 5
  c.expose_current_running_example_as :example
  c.mock_with :rspec do |mocks|
    mocks.allow_message_expectations_on_nil = true
  end
end
