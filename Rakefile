require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'exchange_rate'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :conversion do
  desc 'populate the current store with updated currency rates'
  task :populate_store, :env do
    ExchangeRate.update_conversion_data
  end
end
