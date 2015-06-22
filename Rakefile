require 'bundler/gem_tasks'
require 'rubocop/rake_task'

task default: :test

#-- Tests ------------------------------------------------------------------#

desc 'Runs all the rspec tests'
task :test do
  puts 'Running rspec tests'
  sh 'bundle exec rspec'

  puts 'Checking code style'
  Rake::Task['rubocop'].invoke
end

RuboCop::RakeTask.new
