class IngredientsController < ApplicationController
  def index
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  def delete
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
