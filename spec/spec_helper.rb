require 'simplecov'
require 'simplecov-console'
require 'database_cleaner'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
 SimpleCov::Formatter::Console,
 SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start do
  add_filter 'helpers.rb'
end
DatabaseCleaner[:active_record].strategy = :truncation
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.after(:each) do ## Clean database at the start of each test
    DatabaseCleaner.clean
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
    mocks.syntax = [:should, :receive]
  end
  config.expect_with(:rspec){|c| c.syntax = [:should, :expect]}
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
