Rails.application.routes.draw do


  get 'lookup' => "home#lookup"
  get 'about' => 'home#about'

  post "lookup" => 'home#lookup'

  root 'home#index'

end
