require "rails_helper"

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      session[:user_id] = 1
      get :new
      expect(response).to have_http_status(200)
    end
  end
end