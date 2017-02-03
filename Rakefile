require 'active_record'
require 'sinatra/activerecord/rake'
require 'rake/testtask'

include ActiveRecord::Tasks

# namespace :db do
#   task :load_config do
#     require "./app/app"
#   end
# end

class Seeder
  def initialize(seed)
    @seed = seed
  end

  def load_seed
    raise "Seed file '#{@seed}' does not exist" unless File.file? @seed
    load @seed_file
  end
end


root = File.expand_path '..', __FILE__
DatabaseTasks.env = ENV['ENV'] || 'development'
conf = File.join root, 'config/database.yaml'
DatabaseTasks.database_configuration = YAML.load(File.read(conf))
DatabaseTasks.db_dir = File.join root, 'db'
DatabaseTasks.fixtures_path = File.join root, 'test/fixtures'
DatabaseTasks.migrations_paths = [File.join(root, 'db/migrate')]
DatabaseTasks.seed_loader = Seeder.new File.join root, 'db/seeds.rb'
DatabaseTasks.root = root

task :environment do
  ActiveRecord::Base.configurations = DatabaseTasks.database_configuration
  ActiveRecord::Base.establish_connection DatabaseTasks.env.to_sym
end

load 'active_record/railties/databases.rake'