# frozen_string_literal: true

desc "Run various code quality checks"
task checks: %i[
  slim_lint
  test_eager_loading
  brakeman:check
  bundler_audit
  rubocop
  rails_best_practices
]
