# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

task :my_custom_heroku_release_phase do
    if ENV['DATABASE_URL']
      Rake::Task["db:migrate"].invoke
    else
      $stderr.puts "\n!!! WARNING, no ENV['DATABASE_URL'], not running rake db:migrate as part of heroku release !!!\n\n"
    end
  end