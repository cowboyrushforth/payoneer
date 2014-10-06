require 'vcr'
require './lib/payoneer'

Payoneer.logger = Logger.new('./log/payoneer_test.log')
Payoneer.logger.formatter = Logger::Formatter.new

RSpec.configure do |config|
end

VCR.configure do |c|
  c.configure_rspec_metadata!
  c.cassette_library_dir = "spec/fixtures/vcr"
  c.hook_into :webmock
  c.filter_sensitive_data('payoneer-partner-id') { ENV['PAYONEER_PARTNER_ID'] }
  c.filter_sensitive_data('payoneer-username') { ENV['PAYONEER_USERNAME'] }
  c.filter_sensitive_data('payoneer-password') { ENV['PAYONEER_PASSWORD'] }
  c.filter_sensitive_data('payoneer-api-url') { ENV['PAYONEER_API_URL'] }
  c.default_cassette_options = { match_requests_on: [:method, :uri, :body] }
end

