class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktail
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: "You've just added a new cocktail!"
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
