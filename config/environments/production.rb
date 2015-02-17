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
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'campnight-user.herokuapp.com' }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    #openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
    :authentication       => :plain,
    :address              => 'smtp.sendgrid.net',
    :port                 => 587,
    :domain               => ENV['SENDGRID_DOMAIN'],
    :enable_starttls_auto => true,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD']
  }
end
