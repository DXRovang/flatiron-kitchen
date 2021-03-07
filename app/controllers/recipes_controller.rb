class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create

      @recipe = Recipe.new(recipe_params) 
      # @recipe.ingredients << params[:recipe][:ingredient_ids]
      @recipe.save
      redirect_to recipe_path(@recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def delete
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids:[])
  end
end
