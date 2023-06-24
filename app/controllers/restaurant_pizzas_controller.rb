class RestaurantPizzasController < ApplicationController
  def index
    restaurantpizzas = RestaurantPizza.all
    render json: restaurantpizzas
  end

  def update
    restaurantpizzas = RestaurantPizza.find(params[:id])
    if restaurantpizzas.update(post_params)
      render json: restaurantpizzas
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
