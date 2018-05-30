Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tip_calculator#index'
  post 'calculate', to: 'tip_calculator#calculate'
  
end
