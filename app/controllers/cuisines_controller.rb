class CuisinesController < ApplicationController

  def create
    cuisine_params = params.require(:cuisine).permit(:name)
    @cuisine = Cuisine.new(cuisine_params)
    @cuisine.save
    redirect_to cuisine_path(@cuisine.id)
  end


  def new
    @cuisine = Cuisine.new
  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

end
