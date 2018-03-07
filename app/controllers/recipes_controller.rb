class RecipesController < ApplicationController

  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type, :cuisine_id,
                    :difficulty, :cook_time, :ingredients, :method)
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
