class Team < ApplicationRecord
  has_many :player_teams, dependent: :destroy
  has_many :players ,through: :player_teams
  has_many :team_battles ,dependent: :destroy
  has_many :battles,through: :team_battles
  before_save do    
    self.reputation=0;
    self.plays_win=0;
    self.plays_lose=0;
  end
end
