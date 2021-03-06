Rails.application.routes.draw do
  resources :widgets
  get '/widget-show/:id', to: 'widgets#widget_show', as: :widget_show
  

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: "signup"}
  
  authenticated do
   root :to => 'dashboard#home',  as: :authenticated_root
  end
  
  
  unauthenticated :user do
    root to: 'pages#home', as: :unauthenticated_root
  end
  

  
end
