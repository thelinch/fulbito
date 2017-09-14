class Player < ApplicationRecord
  has_many :player_teams
  has_many :teams , through: :player_teams
  validates :name,presence:{message:"se debe ingresar un nombre"}
  before_save do
    self.numero_goals=0;
    self.reputation=0;
  self.plays_win=0;
  self.plays_lose=0;
  end
end
