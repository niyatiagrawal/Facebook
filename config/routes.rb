Rails.application.routes.draw do
  resources :groups do
    member do
      get :join
      get :leave 
    end
  end
  # <Niyati - adding logic above to know which group the user wants to join
  resources :status_updates
  resources :profiles
  devise_for :users
  # <Niyati - change get to root and replace / with #>
  root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
