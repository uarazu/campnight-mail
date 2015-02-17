CampnightUserEngine::Application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = false
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass
  config.assets.compile = false
  config.assets.digest = true
  config.assets.version = '1.0'
  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  # Mailer
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default_url_options = { :host => 'campnight-user.herokuapp.com' }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    #openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
    #enable_starttls_auto: true,
    :authentication       => :plain,
    :address              => 'smtp.mailgun.org',
    :port                 => 587,
    :domain               => 'campinapolis.com.mailgun.org',
    :user_name            => 'postmaster@campinapolis.com',
    :password             => '06kgpwfpxc23',
    :enable_starttls_auto => true
  }
end
