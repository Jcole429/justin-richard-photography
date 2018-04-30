Rails.application.routes.draw do
  root 'home#index'
  get '/index', to: 'home#index'
  get '/reeftanks', to: 'home#reeftanks'
  get '/portraits', to: 'home#portraits'
  get '/landscapes', to: 'home#landscapes'
  get '/about', to: 'home#about'
  get '/inquiries', to: 'home#inquiries'
  post '/inquiries', to: 'home#create'
  get '/new', to: 'home#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
