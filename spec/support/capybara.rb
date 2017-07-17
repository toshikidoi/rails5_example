require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
RSpec.configure do |config|
  config.after do |example|
    if example.metadata[:type] == :feature && example.exception.present?
      save_page Rails.root.join('public', 'capybara.html')
    end
  end
end
