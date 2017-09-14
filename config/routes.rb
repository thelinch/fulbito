Rails.application.routes.draw do
 root to:"players#index"
resources :players
resources :teams
resources :player_teams 
  get 'team_battles/create'
  get 'team_battles/new'
  get 'team_battles/update'
  get 'team_battles/edit'
  get 'team_battles/show'
  get ':player_id/battles/new',to:"battles#new"
  post 'battles/create'
  post 'battles/update'
  get 'battles/show'
  get 'battles/edit'
  get 'player_teams/new'
  post 'player_teams/create'
  get 'player_teams/show'
  get 'teams/new'
  match 'player/:player_id/teams/new/', to:'teams#new',via: :get
  get 'teams/edit'
  get "teams/index"
  match "player/:player_id/teams/index",to:"teams#index" ,via: :get
  post "player/:player_id/teams/:team_id",to:"teams#Cambiar_equipo"
  post 'teams/create'
  match "player/:player_id/teams/create",to:"teams#create",via: :post

  post 'teams/update'

  get 'teams/show' 
  match "player/:player_id/teams/:team_id/show",to:"teams#show",via: :get
  post 'team/:team_id',to:"teams#detalle_team"
  get 'players/new'

  get 'players/edit'

  get 'players/show'

  get 'players/update'

  post 'players/create'

  get 'players/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
