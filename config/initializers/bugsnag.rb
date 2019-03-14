Bugsnag.configure do |config|
  config.api_key = "21e3314644215ae15060a7523b396e83"
  config.app_version = AppVersion.format('%M.%m.%p') # rubocop:disable Style/FormatStringToken
  config.notify_release_stages = %w[production staging]
  config.ignore_classes << ActiveRecord::RecordInvalid
  config.send_code = true
  config.send_environment = true
end
