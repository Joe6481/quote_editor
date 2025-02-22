# frozen_string_literal: true

begin
  require "slim_lint/rake_task"

  SlimLint::RakeTask.new do |t|
    t.files = ["app/views"]
  end

  task slim_lint_announce: :environment do
    RakeAnnouncer.log_step "Running Slim-Lint"
  end

  task slim_lint: :slim_lint_announce
rescue LoadError
  desc "slim_lint rake task not available"
  task slim_lint: :environment do
    abort "slim_lint rake task is not available"
  end
end
