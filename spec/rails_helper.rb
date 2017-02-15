# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'spec_helper'

Dir["#{::Rails.root}/spec/test_helpers/**/*.rb"].each { |helper| require helper }

ActiveRecord::Migration.maintain_test_schema!

DatabaseCleaner.strategy = :truncation

SimpleCov.start 'rails' do
  add_group 'Scenaries', 'app/scenaries'
end

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.expect_with :rspec do |expectations|
    # be_bigger_than(2).and_smaller_than(4).description
    #   # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #   # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.include ::Rails::Controller::Testing::TestProcess, type: :controller
  config.include ::Rails::Controller::Testing::TemplateAssertions, type: :controller
  config.include ::Rails::Controller::Testing::Integration, type: :controller

  config.include Devise::Test::ControllerHelpers, type: :controller

  config.include Shoulda::Matchers::ActiveModel,
                 type: :model, file_path: /spec\/models/
  config.include Shoulda::Matchers::ActiveRecord,
                 type: :model, file_path: /spec\/models/
  config.include Shoulda::Matchers::ActionController,
                 type: :model, file_path: /spec\/controllers/

  # Custom helpers
  # config.include Requests::JsonHelper, type: :controller
  # config.include Requests::SessionHelper, type: :request
  # config.include Requests::JsonHelper, type: :request

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.before(:suite) { DatabaseCleaner.clean_with(:transaction) }
end
