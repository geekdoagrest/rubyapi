module Api::V1
  class CompaniesController < ApplicationController
    api :GET, '/companies/', "Companies list"
    param :company, String, desc: 'Filter complains by company'
    formats ['json']    
    def index
      companies = Search.execute(company_params, :company)
      
      render json: { 
        filters: company_params, 
        results: companies,         
        total: companies.size
      }, status: :ok        
    end

    private
    def company_params
        params.permit(:company)
    end      
  end
end
