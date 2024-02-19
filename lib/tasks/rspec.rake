# frozen_string_literal: true

begin
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new("rspec")

  desc "Run RSpec code examples (skipping slow ones)"
  RSpec::Core::RakeTask.new("rspec:fast") do |t|
    t.rspec_opts = "--tag ~slow"
  end

  task rspec_announce: :environment do
    RakeAnnouncer.log_step "Running specs"
  end

  task rspec: :rspec_announce
  task "rspec:fast" => :rspec_announce
rescue LoadError
  desc "RSpec is not available"
  task rspec: :environment do
    abort "RSpec is not available"
  end
end
