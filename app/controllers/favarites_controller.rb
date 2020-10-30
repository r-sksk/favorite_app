class FavaritesController < ApplicationController
  def create 
    @favarites = current_user.favarites.create(recipe_id: params[:recipe_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy 
    @recipe = Recipe.find(params[:recipe_id])
    @favarite = current_user.favarites.find_by(recipe_id: @recipe.id)
    @favarite.destroy 
    redirect_back(fallback_location: root_path)
  end

end
