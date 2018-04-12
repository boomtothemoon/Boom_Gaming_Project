class GamesController < ApplicationController
  def index
  #@games = Game.order(:name)
    @games = Game.distinct().order(:name).page(params[:page]).per(10)
  end

  def show
    @games = Game.find(params[:id])
  end

  def search
    @keywork_terms = params[:q]

    #@searches = Game.where(name: @keywork_terms)
    @games = Game.where("name LIKE ?", "%#{@keywork_terms}%").page(params[:page]).per(10)
  end

  def search_by_platform_name
    @keywork_terms = params[:q]

    #@searches = Game.where(name: @keywork_terms)
    @games = Game.where("platform_name LIKE ?", "%#{@keywork_terms}%").page(params[:page]).per(10)
  end

  def search_by_platform
    @keywork_terms = params[:name]

    #@searches = Game.where(name: @keywork_terms)
    @games = Game.where("platform_name == ?", @keywork_terms).page(params[:page]).per(10)

    # .page(params[:page]).per(10)
  end
end
