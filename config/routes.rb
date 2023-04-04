Rails.application.routes.draw do
  get 'customers/new'
  get 'customers/create'
  resources :users,only:[:new,:create]
  resources :customers,only:[:new,:create,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

end
