require 'rails_helper'

RSpec.describe Api::V1::ComplainsController do
  describe "GET #index" do
    before do
      get :index
    end
    
    it "Test response status" do
      expect(response).to have_http_status(:ok)
    end
    
    it "Test response integrity" do
      json = JSON.parse(response.body)
      complains = Complain.all

      expect(json["results"].size).to eq(complains.size) 
    end
    
    it "Test JSON body response contains expected attributes" do
      json = JSON.parse(response.body)
      expect(json.keys).to match_array(["filters", "results", "total"])
    end      
  end
end