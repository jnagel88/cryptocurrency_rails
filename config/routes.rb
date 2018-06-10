Rails.application.routes.draw do


  devise_for :users
  get 'lookup' => "home#lookup"
  get 'about' => 'home#about'

  post "lookup" => 'home#lookup'

  root 'home#index'

end
