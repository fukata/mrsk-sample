Rails.application.routes.draw do
  root 'home#index'
  get '/up' => 'healthcheck#up'
end
