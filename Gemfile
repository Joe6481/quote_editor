# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.3"

gem "rails", "~> 7.1.3"

gem "bootsnap", require: false
gem "jbuilder"
gem "jsbundling-rails"
gem "puma", ">= 5.0"
gem "redis", ">= 4.0.1"
gem "slim"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "stimulus-rails"
gem "tailwindcss-rails", "~> 2.3"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "rubocop"
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "slim_lint"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "cucumber", "~> 9.1"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "simplecov"
end
