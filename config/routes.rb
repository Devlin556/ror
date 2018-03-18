Rails.application.routes.draw do
  get 'five/index'

  get 'four/index'
  
  get 'three/index'
  get 'four/index'
  get 'two/index'
  
  get 'one/index'
  get 'test/test'
  root 'test#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'five/index/search' => 'five/index#perform'

end
