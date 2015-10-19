SampleApp::Application.routes.draw do
  resources :images

  # resources :users do
  #   member do
  #     get :following, :followers
  #   end
  # end
  # resources :sessions,      only: [:new, :create, :destroy]
  # resources :microposts,    only: [:create, :destroy]
  # resources :relationships, only: [:create, :destroy]

  resources :image
  root to: 'images#new'
  # root to: 'static_pages#home'
  # match '/signup',  to: 'users#new',            via: 'get'
  # match '/signin',  to: 'sessions#new',         via: 'get'
  # match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
end
