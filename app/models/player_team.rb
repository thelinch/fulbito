class PlayerTeam < ApplicationRecord
  belongs_to :player
  belongs_to :team
  validates :player,:team,presence:true
  before_save do
  self.is_activo=true;
  verificar_team
  end
  private 
  def verificar_team
PlayerTeam.where(player:self.player,is_activo:true).last().update_column("is_activo",false)
end
end
