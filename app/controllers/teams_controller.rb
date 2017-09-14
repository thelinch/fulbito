class TeamsController < ApplicationController
  protect_from_forgery with: :null_session
  def new
    @team=Team.new();
    @player=Player.find(params[:player_id])
  end

  def edit
  end

  def create
   @team=Team.new(params_teams)
   @player=Player.find(params[:player_id])
   @player_team=PlayerTeam.new(player:@player,team:@team)
if @player_team.save()
  redirect_to players_path,notice:"se registro"
else
  render "new"
end

  end

  def update
  end

  def show
  end

 def index
  @player=Player.find(params[:player_id])
   @teams=Team.all
 end
private def params_teams
 params.require(:team).permit(:name) 
end
def Cambiar_equipo
  @player=Player.find(params[:player_id])
  @team=Team.find(params[:team_id])
  @player_team=PlayerTeam.new(player:@player,team:@team)
  if @player_team.save
render js:"alert('se cambio al equipo :"+@team.name+"')",layaut:false
  end
end
def detalle_team
  @team=Team.select("id,reputation,plays_win,plays_lose").find(params[:team_id]);
  render json:@team,layaut:false;

end
end
