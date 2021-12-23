Rails.application.routes.draw do
  root 'books#index'
  resources :books
  # resources :authors 

  devise_for :authors, :controllers => { :registrations => 'registrations' }, :path => 'accounts', :path_names => { :sign_in => 'login', :sign_up => 'sign_up', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification' }
 
  # devise_for :authors, controllers: {registerations: "registerations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
