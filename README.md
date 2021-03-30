# Demo application for GERA

# Installation

> git submodule init
> git submodule update
> bundle
> bundle exec rake db:setup
> bundle exec rake db:seed

# Configuration

Environment variables:

1. `BUGSNAG_API_KEY`
2. `SIDEKIQ_USERNAME`
3. `SIDEKIQ_PASSWORD`


# Update gera gem

> rake gera:install:migrations  
