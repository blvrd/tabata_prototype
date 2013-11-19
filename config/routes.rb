TabataApp::Application.routes.draw do
  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'

  root "workouts#index"

  resources :workouts
  resources :users
end
