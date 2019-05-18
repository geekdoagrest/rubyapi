module Api::V1
  class ComplainsController < ApplicationController
    api :GET, '/complains/', "Complains list"
    param :company, String, desc: 'Filter complains by company'
    param :locale, String, desc: 'Filter complains by locale'
    param :description, String, desc: 'Filter complains by description'
    formats ['json']
    def index
      complains = Search.execute(complain_params)
      
      render json: { 
        filters: complain_params, 
        results: complains,         
        total: complains.size
      }, status: :ok
    end

    private
    def complain_params
        params.permit(:company, :locale, :description)
    end
  end
end
