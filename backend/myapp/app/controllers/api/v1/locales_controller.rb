module Api::V1
  class LocalesController < ApplicationController
    api :GET, '/locales/', "Locales list"
    param :locale, String, desc: 'Filter complains by locale'
    formats ['json']       
    def index
      locales = Search.execute(locale_params, :locale)
      
      render json: { 
        filters: locale_params, 
        results: locales,         
        total: locales.size
      }, status: :ok      
    end

    private
    def locale_params
        params.permit(:locale)
    end    
  end
end
