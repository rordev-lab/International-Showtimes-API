Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :queue_jobs
    end
  end
  # root 'movies#index'
end
