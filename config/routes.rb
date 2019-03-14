require 'sidekiq/web'
Sidekiq::Web.set :session_secret, Rails.application.credentials[:secret_key_base]

Rails.application.routes.draw do
  root to: redirect('/direction_rates')
  mount Gera::Engine => '/'

	#Sidekiq::Web.use Rack::Auth::Basic do |username, password|
		## Protect against timing attacks:
		## - See https://codahale.com/a-lesson-in-timing-attacks/
		## - See https://thisdata.com/blog/timing-attacks-against-string-comparison/
		## - Use & (do not use &&) so that it doesn't short circuit.
		## - Use digests to stop length information leaking (see also ActiveSupport::SecurityUtils.variable_size_secure_compare)
		#ActiveSupport::SecurityUtils.secure_compare(
			#::Digest::SHA256.hexdigest(username),
			#::Digest::SHA256.hexdigest(Rails.application.credentials[:sidekiq_username])) &
			#ActiveSupport::SecurityUtils.secure_compare(
				#::Digest::SHA256.hexdigest(password),
				#::Digest::SHA256.hexdigest(Rails.application.credentials[:sidekiq_password]))
	#end if Rails.env.production?

  mount Sidekiq::Web => '/sidekiq'
end
