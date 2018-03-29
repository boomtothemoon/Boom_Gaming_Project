class PlatformsController < ApplicationController
  def index
    @platforms = Platform.order(:name)
  end

  def show
    
  end

  def search
    @keywork_terms = params[:q]

    #@searches = Game.where(name: @keywork_terms)
    @games = Game.where("name LIKE ?", "%#{@keywork_terms}%").page(params[:page]).per(10)
  end
end
