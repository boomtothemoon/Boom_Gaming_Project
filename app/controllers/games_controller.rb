class GamesController < ApplicationController
  def index
    @games = Game.order(:name)
  end

  def show
    @games = Game.find(params[:id])
  end
end
