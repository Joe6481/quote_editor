Rake::Task["tailwindcss:build"].enhance ["yarn:install"] if Rake::Task.task_defined?("tailwindcss:build")
