TabataApp::Application.routes.draw do
  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'

  root "pages#welcome"

  resources :workouts
  resources :users
end
