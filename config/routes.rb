Rails.application.routes.draw do

  resources :cryptos
  devise_for :users
  get 'lookup' => "home#lookup"
  get 'about' => 'home#about'

  post "lookup" => 'home#lookup'

  root 'home#index'

end
