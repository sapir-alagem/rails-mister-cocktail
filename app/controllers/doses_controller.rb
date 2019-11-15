class DosesController < ApplicationController
  before_action :set_cocktail, except: :destroy

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: "You've just added a new dose!"
    else
      render 'cocktails/show'
    end
  end

  def destroy
    set_dose

    @dose.destroy

    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
