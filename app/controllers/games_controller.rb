class GamesController < ApplicationController
  def index
  #@games = Game.order(:name)
  @games = Game.page(params[:page]).per(10)
  end

  def show
    @games = Game.find(params[:id])
  end
end
