class RecipesController < ApplicationController

  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type, :cuisine,
                    :difficulty, :cook_time, :ingredients, :method)
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe.id)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    id = params[:id]
    @recipe = Recipe.find(id)
  end
end
