Apipie.configure do |config|
  config.app_name                = "Myapp"
  config.api_base_url            = "/api/v1"
  config.doc_base_url            = "/doc"
  
  config.translate         = false
  config.default_locale = nil  
  
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end
