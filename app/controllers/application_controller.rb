class ApplicationController < ActionController::API
  before_action :check_headers

  private

  def check_headers
    if request.headers["HEADER"] == "password"
      return true
    else
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end
  end
end
