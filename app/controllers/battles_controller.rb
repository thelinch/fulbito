class BattlesController < ApplicationController
  def new
    @battle=Battle.new();
  end

  def create
@battle=Battle.new(params_battle)
if @battle.save()
render json:@battle
end
  end

  def update
  end

  def show
  end

  def edit
  end
  private 
  def params_battle
  params.require(:battle).permit(:time,:bet)
  end
end
