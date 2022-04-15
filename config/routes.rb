Rails.application.routes.draw do

  default_url_options :host => "localhost:3000"
  root 'books#index'
  get 'books/assignbookstags'
  resources :books do 
     collection do 
      #  get 'assign-tag', to: 'assignbookstags'
       post 'assign-book-tag', to: 'books#assign_tag'
     end
  end
  # resources :authors 

  devise_for :authors, :controllers => { :registrations => 'registrations' }, 
                                          :path => 'accounts', :path_names => { 
                                            :sign_in => 'login', :sign_up => 'sign_up', 
                                            :sign_out => 'logout', :password => 'secret', 
                                            :confirmation => 'verification' }
  resources :authors
  # devise_for :authors, controllers: {registerations: "registerations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
