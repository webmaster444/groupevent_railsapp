Rails.application.routes.draw do
  root 'group_events#index'
  resources :group_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
