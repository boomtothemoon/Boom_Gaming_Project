Rails.application.routes.draw do



  get 'contacts/index'

  get 'contacts/show'

  get 'welcome/index' => 'welcome#index'
  get 'welcome/about' => 'welcome#about'
  get 'welcome/contact' => 'welcome#contact'
  get 'welcome/games' => 'welcome#games'
  get 'welcome/login' => 'welcome#login'

  get 'games/index' => 'games#index'
  get 'games/show' => 'games#show'
  get 'games/search' => 'games#search'
  get 'games/search_by_platform' => 'games#search_by_platform'

  get 'platforms/index' => 'platforms#index'

  get 'contacts/index' => 'contacts#index'

#GET /board_games
#GET /

#get 'games', to: 'games#index'
#get 'games/:id', to: 'games#show'

resources :games, only: [:index, :show]

root to: 'welcome#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
