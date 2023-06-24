class RestaurantPizzasController < ApplicationController
  def index
    restaurantpizzas = RestaurantPizza.all
    render json: restaurantpizzas
  end

  def create
    restaurantpizza = RestaurantPizza.create(pizza_params)
    render json: restaurantpizza, status: :created
  end
private
def pizza_params
    params.permit(:price, :pizza_id, :restaurant_id)
    end
end
