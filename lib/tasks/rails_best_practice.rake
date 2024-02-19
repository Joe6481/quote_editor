# frozen_string_literal: true

begin
  require "rails_best_practices/rake_task"
  RailsBestPractices::RakeTask.new

  task rails_best_practices_announce: :environment do
    RakeAnnouncer.log_step "Running Rails best practices"
  end

  task rails_best_practices: :rails_best_practices_announce
rescue LoadError
  desc "Rails best practices is not available"
  task rails_best_practices: :environment do
    abort "Rails best practices is not available"
  end
end
