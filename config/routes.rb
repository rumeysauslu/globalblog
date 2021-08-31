Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/haber/:sef', to: 'articles#sef_show', as: :show_article
  resources :articles

end
