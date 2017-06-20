Rails.application.routes.draw do
  

  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'
  
  get 'portfolio/:id', to: 'portfolios#show' , as: 'portfolio_show'

  resources :portfolios, except: [:show]
  resources :blogs
  root to: 'pages#home'
end
