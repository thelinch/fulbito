class Battle < ApplicationRecord
  has_many :team_battles
  has_many :teams ,through: :team_battles
before_save do
self.date=Time.now.strftime("%d-%m-%Y")		
end
end
