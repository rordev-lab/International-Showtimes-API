class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: @movies
  end

  def create
    # default: { priority: 11 },
    # high_priority: { priority: 1 },
    # low_priority: { priority: 75 }
    CreateMovieJob.set(priority: 1).perform_later(movie_params)
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
