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

  get 'platforms/search_by_platform' => 'platforms#search_by_platform'
  get 'platforms/search_by_platform_name' => 'platforms#search_by_platform_name'
  get 'platforms/index' => 'platforms#index'
  get 'platforms/search' => 'platforms#search'

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
