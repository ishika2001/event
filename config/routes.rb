Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
   end

   
  root "home#index"
  get 'home', to: "home#index"
  # get 'organizer_dashboard', to: "organizers#dashboard"
  resources :events
  resources :organizers
  get 'attender_dashboard', to: "attenders#dashboard"
  
end



 

