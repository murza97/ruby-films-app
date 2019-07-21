Rails.application.routes.draw do
  root 'films#index', as: 'home'
  #get 'show' => 'films#show', as: 'show'
  get 'about' => 'films#about', as: 'about'
  get 'sortra' => 'films#sortra', as: 'sortra'
  get 'sortye' => 'films#sortye', as: 'sortye'
  get 'filtering_params' => 'films#filtering_params', as: 'filtering_params'
  resources :films
end
