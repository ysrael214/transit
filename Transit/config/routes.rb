  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 1/28/2019 - Sean Chan - Initial File
  # 1.1 - 1/28/2019 - Sean Chan - Configured Routes for Favorites and Transit Lines
  # 1.2 - 2/7/2019 - Michael Marrero - Added Comments, Licensure and Additional Information
  # 2.0 - 2/9/2019 - Sean Chan - Added Routing Functions for Logging In/Signing Up
  # 2.1 - 2/18/2019 - Michael Marrero - Added Routing Functions for Removal/Addition of Transit Lines in a respective FRG

  # File Creation Date: 1/28/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.


Rails.application.routes.draw do
  # For sessions
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For Commuter / User
  get '/signup', to: 'commuters#new', as: 'signup'
  get '/commuters/:id', to:'commuters#show', as: 'commuter'
  post '/signup', to:'commuter#create', as: 'create_commuter'
  resources :transit_stops
  resources :transit_lines
  root 'static_pages#home'
  resources :favorites
  # For FRG Editing
  patch '/favorites/:id/remove_favorite/:remove_id/', to: 'favorites#removal', as: 'remove_transit_line'
  patch '/favorites/:id/add_favorite/:add_id/', to: 'favorites#addition', as: 'add_transit_line'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
