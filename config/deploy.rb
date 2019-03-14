# frozen_string_literal: true

lock '3.11.0'

set :application, 'gera.finfex.tech'
set :user, 'kassa'

set :repo_url, 'https://github.com/finfex/gera.git' if ENV['USE_LOCAL_REPO'].nil?
set :keep_releases, 10

set :linked_files, %w[config/database.yml config/master.key]
set :linked_dirs, %w[log node_modules tmp/pids tmp/cache tmp/sockets public/assets]

set :config_files, fetch(:linked_files)

set :deploy_to, -> { "/home/#{fetch(:user)}/#{fetch(:application)}" }

#set :nvm_type, :user # or :system, depends on your nvm setup
#set :nvm_node, File.read('.nvmrc').strip
#set :nvm_map_bins, %w[node yarn]

ask :branch, ENV['BRANCH'] || proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :sidekiq_processes, 1

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip

set :assets_dependencies, %w[app/assets lib/assets vendor/assets Gemfile.lock config/routes.rb config/initializers/assets.rb]

set :local_assets_dir, 'public'

set :puma_init_active_record, true

#set :default_env, 'BUGSNAG_API_KEY' => Settings.bugsnag_api_key
#set :bugsnag_api_key, Settings.bugsnag_api_key

set :db_local_clean, false
set :db_remote_clean, true
