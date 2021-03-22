Rails.application.routes.draw do
  get '/prime_checker' => 'prime_checker#show'
  get '/prime_checker/new' => 'prime_checker#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
