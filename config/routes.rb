Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :queue_jobs
    end
  end
  mount RailsPerformance::Engine, at: 'rails/performance'
  # root 'movies#index'
end