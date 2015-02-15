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
  config.action_mailer.default_url_options = { :host => ENV["DOMAIN"] }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    #address: ENV["SMTP_SERVER"],
    #openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
    #port: ENV["SMTP_PORT"].to_i,
    #domain: ENV["MAILER_DOMAIN"],
    #authentication: "plain",
    #enable_starttls_auto: true,
    #user_name: ENV["SMTP_USER"],
    #password: ENV["SMTP_PWD"]
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'gmail.com',
    :user_name            => 'caegon@gmail.com',
    :password             => '@#anonYmous123',
    :authentication       => 'login',
    :enable_starttls_auto => true
  }
end
