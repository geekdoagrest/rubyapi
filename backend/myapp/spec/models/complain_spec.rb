require 'rails_helper'

RSpec.describe Complain, type: :model do
    context "Complain context" do
       it "Complain is valid?" do
           complain = Complain.new
           complain.title = "Teste Titulo"
           complain.description = "Teste Titulo"
           complain.locale = "Cidade"
           complain.company = "Empresa"
           
           expect(complain.valid?).to be_truthy
       end
    end
end