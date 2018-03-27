class GamesController < ApplicationController
  def index
    #@games = Game.order(:name)
    @games = Game.all.page(params[:page]).per_page(10)
  end

  def show
    @games = Game.find(params[:id])
  end
end
