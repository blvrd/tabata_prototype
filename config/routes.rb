TabataApp::Application.routes.draw do
  root 'workouts#index'
  resources :workouts
end
