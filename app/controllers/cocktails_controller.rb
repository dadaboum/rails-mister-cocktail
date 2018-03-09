class CocktailsController < ApplicationController
  before_action :get_cocktail, only: (:show)

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(get_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render 'new'
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def get_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def get_params
    params.require(:cocktail).permit(:name, :photo)

  end

end
