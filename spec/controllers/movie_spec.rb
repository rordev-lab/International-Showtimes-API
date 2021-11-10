require 'rails_helper'

RSpec.describe Api::V1::MoviesController, type: :controller do
  describe "GET index" do

    before { request.headers["HEADER"] = "password" }

    it "returns a successful response" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "assigns all movies to @movies" do
      get :index
      expect(assigns(:movies)).to eq(Movie.all)
     end
  end
end