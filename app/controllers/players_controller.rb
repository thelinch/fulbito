class PlayersController < ApplicationController
  def new
    @player=Player.new();
    @teams=Team.all
  end

  def edit
  end

  def show
    @player=Player.find(params[:id])
  end
def index
  @players=Player.all

end
  def update
  end

  def create
    @player=Player.new(params_players)
     @team=Team.find(params.require(:team).permit(:team_id)[:team_id])
@player_team=PlayerTeam.new(player:@player,team:@team)
    if @player_team.save()
      redirect_to  root_path,notice:"se agrego correctamente"
    else
      render "new"
    end
  end

  def destroy
  end
 
  private def params_players
    params.require(:player).permit(:name,:position)
  end
end
