require 'rails_helper'

RSpec.describe Api::V1::QueueJobsController, type: :controller do
  describe "GET index" do

    before { request.headers["HEADER"] = "password" }

    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns all movies to @jobs" do
      get :index
      expect(assigns(:jobs)).to eq(QueueJob.all)
     end
  end
end