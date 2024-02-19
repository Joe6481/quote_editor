# frozen_string_literal: true

begin
  require "bundler/audit/cli"

  desc "Updates the ruby-advisory-db and runs audit"
  task bundler_audit: :environment do
    RakeAnnouncer.log_step "Checking gems for known security warnings"
    Bundler::Audit::CLI.start ["update"]
    Bundler::Audit::CLI.start ["check"]
  end
rescue LoadError
  task bundler_audit: :environment do
    abort "bundler_audit rake task is not available"
  end
end
