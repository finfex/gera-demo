# frozen_string_literal: true

set :stage, :production

set :rails_env, :production
fetch(:default_env)[:rails_env] = :production

set :disallow_pushing, true
set :user, ENV['DEPLOY_USER']

server 'gera.finfex.tech', user: fetch(:user), port: '22', roles: %w[sidekiq web app db bugsnag].freeze
