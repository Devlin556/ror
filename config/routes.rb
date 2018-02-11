Rails.application.routes.draw do
  get 'three/index'

  get 'two/index'
  get 'one/index'

  get 'test/test'
  root 'test#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
