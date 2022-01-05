task :my_custom_heroku_release_phase do
  if ENV['DATABASE_URL']
    Rake::Task["db:migrate"].invoke
  else
    $stderr.puts "\n!!! WARNING, no ENV['DATABASE_URL'], not running rake db:migrate as part of heroku release !!!\n\n"
  end
end