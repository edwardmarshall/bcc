require 'bundler/capistrano'

set :application, "bcc"
set :user, 'ubuntu'
ssh_options[:keys]=["#{ENV['HOME']}/.ssh/bcc.pem"]
ssh_options[:forward_agent] = true
default_run_options[:pty] = true
set :use_sudo, false 
set :scm, :git
set :repository,  "git@github.com:edwardmarshall/bcc.git"
set :deploy_to, "/apps/#{application}"
set :current_path, "#{deploy_to}/current"
set :deploy_via, :remote_cache

namespace :prep do
  desc "run bundle install and migrate the db"
  task :bundleandmigrate do
    run "cd #{current_path} && bundle install && bundle exec rake db:migrate RAILS_ENV=\"#{rails_env}\""
  end
end

before "deploy:restart", "prep:bundleandmigrate"
set :keep_releases, 5
after "deploy:restart", "deploy:cleanup"

task :dev do
	set :branch, 'dev'
	set :rails_env, :development
	set :location, '23.23.201.205'
  role :web, location
  role :app, location
  role :db,  location, :primary => true
end

# task :staging do
#   set :branch, 'dev'
#   set :rails_env, :production
#   set :location, '54.235.197.167'
#   role :web, location
#   role :app, location
#   role :db,  location, :primary => true
# end

# task :prod do
#   ssh_options[:keys]=["#{ENV['HOME']}/.ssh/baseclinic_prod.pem"]
#   set :branch, 'master'
#   set :rails_env, :production
#   set :location, '107.22.168.96'
#   role :web, location
#   role :app, location
#   role :db,  location, :primary => true
# end

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end