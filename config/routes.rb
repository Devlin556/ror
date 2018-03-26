Rails.application.routes.draw do
  get 'login/index'

  get 'five/index'

  get 'four/index'
  
  get 'three/index'
  get 'four/index'
  get 'two/index'
  get 'one/index'
  get 'test/test'

  get 'login/index'

  post 'five/search' => 'five#perform'
  
  post 'login/login' => 'login#login'
  post 'login/index' => 'login#index'

  root 'five#index'

end
