class PlatformsController < ApplicationController
  def index
    flash[:breadcrumbDirectory] = "Platform"

    @platforms = Platform.order(:name).page(params[:page]).per(10)
  end

  def show
    
  end

  def search
    @keywork_terms = params[:q]
    @text_box =  params[:x][:platform_id]

    #@searches = Game.where(name: @keywork_terms)
    @games = Game.where("platform_name LIKE ? AND name LIKE ?", "%#{@text_box}%", "%#{@keywork_terms}%").page(params[:page]).per(10)
  end

  def search_by_platform
    @keywork_terms = params[:name]

    #@searches = Game.where(name: @keywork_terms)
    @games = Platform.where("name == ?", @keywork_terms).page(params[:page]).per(10)
  end
end
