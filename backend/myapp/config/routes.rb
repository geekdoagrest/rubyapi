Rails.application.routes.draw do
  apipie
  namespace 'api' do
  	namespace 'v1' do
  	  get '/complains/', to: 'complains#index'
  		
	    get '/companies/', to: 'companies#index'
      
  	  get '/locales/', to: 'locales#index'
  	end
  end 
end
