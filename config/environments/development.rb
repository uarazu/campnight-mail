CampnightUserEngine::Application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true

  # Mailer
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
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
  config.action_dispatch.default_headers = {'X-Frame-Options' => 'ALLOWALL'}
end
