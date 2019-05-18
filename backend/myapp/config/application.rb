require_relative 'boot'

require "rails"
require "active_model/railtie"
#require "active_job/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
#require "action_view/railtie"
#require "action_cable/engine"
#require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    config.api_only = true
    
    config.autoload_paths += %W(#{config.root}/app/services)
    
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '',
          headers: :any,
          methods: %i(get post put patch delete options head)
      end
    end
    
    config.middleware.use Rack::Attack
    
    config.generators do |g|
      g.test_framework :rspec
    end    
  end
end
