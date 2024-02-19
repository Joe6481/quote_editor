# frozen_string_literal: true

require "rake_announcer"

Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined? :default

task default: %i[
  clean
  checks
  rspec
  random_colourful_animal
]
