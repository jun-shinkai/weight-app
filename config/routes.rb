Rails.application.routes.draw do
  devise_for :users
   root to:  'infos#index'
   resources :infos 
end
