require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, Rails.env)

module CampnightUserEngine
  class Application < Rails::Application
    I18n.enforce_available_locales = false
    config.generators.test_framework false
    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.action_dispatch.default_headers = { 'X-Frame-Options' => 'ALLOWALL' } 
  end
end
