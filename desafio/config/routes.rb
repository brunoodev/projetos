Rails.application.routes.draw do
  
  resources :clientes

  get '/clientes/busca/:nome' , :controller => 'clientes', :action => 'shownome'

  root 'clientes#index'
end
