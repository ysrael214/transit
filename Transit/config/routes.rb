Rails.application.routes.draw do
  resources :transit_lines
  root 'static_pages#home'
  get 'commuters/new'
  resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
