Rails.application.routes.draw do
  get 'some/some'

  get 'test/test'
  root 'test#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end