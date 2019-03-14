# frozen_string_literal: true

require 'settingslogic'
class Settings < Settingslogic
  if defined? Rails
    source "#{Rails.root}/config/settings.yml"
    namespace Rails.env
    suppress_errors Rails.env.production?
  else
    source './config/application.yml'
    namespace 'development'
  end
end
