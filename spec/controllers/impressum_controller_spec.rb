require 'rails_helper'

RSpec.describe ImpressumController, type: :controller do

  describe "GET #impressum" do
    it "returns http success" do
      get :impressum
      expect(response).to have_http_status(:success)
    end
  end

end
