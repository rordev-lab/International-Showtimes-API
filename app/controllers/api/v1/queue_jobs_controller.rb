class Api::V1::QueueJobsController < ApplicationController
  def index
    @jobs = QueueJob.all
    render json: @jobs
  end
end
