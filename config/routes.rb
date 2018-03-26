Rails.application.routes.draw do
  get 'login/index'

  get 'five/index'

  get 'four/index'
  
  get 'three/index'
  get 'four/index'
  get 'two/index'
  
  get 'one/index'
  get 'test/test'
  root 'five#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'five/search' => 'five#perform'
  
  post 'login/login' => 'five#login'

end
