Rails.application.routes.draw do
root 'doors#index'
resources :doors
end
