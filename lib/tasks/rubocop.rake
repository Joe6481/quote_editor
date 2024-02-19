# frozen_string_literal: true

begin
  require "rubocop/rake_task"

  RuboCop::RakeTask.new do |task|
    task.options = ["--parallel"]
  end

  task rubocop_announce: :environment do
    RakeAnnouncer.log_step "Running Rubocop"
  end

  task rubocop: :rubocop_announce
rescue LoadError
  desc "Rubocop is not available"
  task rubocop: :environment do
    abort "Rubocop is not avaialble"
  end
end
