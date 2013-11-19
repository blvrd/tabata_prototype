TabataApp::Application.routes.draw do
  root 'sessions#new'
  resources :workouts
  resources :users
end
