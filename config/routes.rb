TabataApp::Application.routes.draw do
  root 'workouts#welcome'
  resources :workouts
end
