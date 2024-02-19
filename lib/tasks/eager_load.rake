# frozen_string_literal: true

desc "Test eager loading"
task test_eager_loading: :environment do
  RakeAnnouncer.log_step "Testing eager loading"
  Rake::Task["environment"].invoke # called inline so Zeitwerk::NameError exceptions from the task are caught
  Zeitwerk::Loader.eager_load_all
rescue Zeitwerk::NameError => e
  abort(e.message)
end
