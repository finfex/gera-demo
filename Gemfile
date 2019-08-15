source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2.1'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

source 'https://rails-assets.org' do
    gem 'rails-assets-noty'
end

gem 'hiredis', '~> 0.6.0'
gem 'redis', '~> 4.0', require: ['redis', 'redis/connection/hiredis']
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'sidekiq-failures', github: 'mhfs/sidekiq-failures'
gem 'sidekiq-status'
gem 'breadcrumbs_on_rails'

gem 'non-stupid-digest-assets'

gem 'gera', path: 'vendor/gera'
gem 'authority', github: 'BrandyMint/authority', branch: 'feature/included_abilities_counter'
gem 'pg'

gem 'simple_form', git: 'git://github.com/plataformatec/simple_form.git'
gem 'simple_form_bootstrap_inputs'

gem 'draper'
gem 'best_in_place'

gem 'sorcery'
gem 'jquery-rails'
gem 'nprogress-rails'
gem 'noty_flash', github: 'BrandyMint/noty_flash'

gem 'slim-rails'
gem 'sassc-rails'
gem 'bootstrap-sass', '~> 3.2'
gem 'bugsnag'
gem 'semver2'
gem 'settingslogic'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'dapi-archivable', '~> 0.1.2', require: 'archivable'
gem 'ionicons-rails'
gem 'active_link_to', github: 'BrandyMint/active_link_to'

gem 'bootstrap-kaminari-views'
gem 'kaminari'
gem 'kaminari-i18n'

gem 'factory_bot'
gem 'factory_bot_rails', github: 'thoughtbot/factory_bot_rails'
gem 'ruby-progressbar'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'guard'
  gem 'terminal-notifier-guard' # , '~> 1.6.1', require: darwin_only('terminal-notifier-guard')
  gem 'guard-bundler'
  gem 'guard-ctags-bundler'
  gem 'guard-rails'
  gem 'guard-rubocop'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'bugsnag-capistrano', require: false
  gem 'capistrano', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-db-tasks', require: false
  gem 'capistrano-faster-assets', require: false
  gem 'capistrano-git-with-submodules', '~> 2.0'
  gem 'capistrano-rails', require: false
  gem 'capistrano-rails-console', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-shell', require: false
  gem 'capistrano-sidekiq', require: false
  gem 'capistrano3-puma', github: 'seuros/capistrano-puma', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
