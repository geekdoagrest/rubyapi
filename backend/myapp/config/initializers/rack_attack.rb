class Rack::Attack
 Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new
 
 throttle('req/ip', limit: 5, period: 5) do |req|
    req.ip
 end
  
end