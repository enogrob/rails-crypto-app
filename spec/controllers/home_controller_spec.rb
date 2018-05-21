require 'rails_helper'
require 'net/http'
require 'json'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #lookup" do
    it "returns http success" do
      get :lookup
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #lookup" do
    it "returns http success" do
      post :lookup
      expect(response).to have_http_status(:success)
    end
  end

end
