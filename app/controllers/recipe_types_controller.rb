class RecipeTypesController < ApplicationController

  def new
    @recipe_type = RecipeType.new(recipe_type_params)
  end

  def create
    @recipe_type = RecipeType.new(recipe_type_params)

    if @recipe_type.save
      redirect_to recipe_type_path(@recipe_type)
    else
      flash[:alert] = 'Você deve informar todos os dados da receita'
      render :new
    end
  end

  def show
    @recipe_type = RecipeType.find(params[:id])

    if @recipe_type.recipes.empty?
      flash[:alert] = 'Nenhuma receita encontrada para este tipo de receitas'
    end
  end

  def recipe_type_params
      params.require(:recipe_type).permit(:name)
  end

end
