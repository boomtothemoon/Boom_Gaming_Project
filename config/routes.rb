Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/games'

  get 'welcome/login'

#GET /board_games
#GET /

#get 'games', to: 'games#index'
#get 'games/:id', to: 'games#show'

resources :games, only: [:index, :show]

root to: 'games#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
