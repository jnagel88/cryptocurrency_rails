Rails.application.routes.draw do

  get 'lookup' => "home#lookup"
  get 'about' => 'home#about'

  root 'home#index'

end
