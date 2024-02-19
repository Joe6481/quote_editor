# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.3"

gem "rails", "~> 7.1.3"

gem "bootsnap", require: false
gem "jbuilder"
gem "jsbundling-rails"
gem "puma", ">= 5.0"
gem "redis", ">= 4.0.1"
gem "simple_form"
gem "slim"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "stimulus-rails"
gem "tailwindcss-rails", "~> 2.3"
gem "term-ansicolor"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "debug", platforms: %i[mri windows]
  gem "factory_bot_rails"
  gem "faker"
end

group :development do
  gem "brakeman"
  gem "bundler-audit"
  gem "rubocop"
  gem "rubocop-factory_bot", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rake", require: false
  gem "rubocop-rspec", require: false
  gem "slim_lint"
  gem "web-console"
end

group :test do
  gem "capybara-screenshot"
  gem "cucumber-rails", require: false
  gem "database_cleaner-active_record"
  gem "rails_best_practices-rake_task", require: false
  gem "random_colourful_animal", git: "https://gitlab.agile.nat.bt.com/APP14352/small-projects/random_colourful_animal.git", tag: "v0.0.5"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "simplecov"
end
