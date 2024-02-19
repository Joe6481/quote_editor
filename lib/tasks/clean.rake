# frozen_string_literal: true

require "rake/clean"

CLEAN.include "log/**"
CLEAN.include "tmp/cache/**"
CLEAN.include "tmp/miniprofiler/**"
CLEAN.include "tmp/capybara/**"
CLEAN.include "tmp/onsite_power_outages*.yml"
CLEAN.exclude "tmp/cache/.gitkeep"
CLEAN.exclude "tmp/pids/.gitkeep"
