class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants
  end

  def show
    restaurant = find_restaurant
    render_restaurant(restaurant)
  end

  def destroy
    restaurant = find_restaurant
    if restaurant
      restaurant.destroy
      head :no_content
    else
      render_restaurant_not_found
    end
  end

  private

  def find_restaurant
    Restaurant.find_by(id: params[:id])
  end

  
  def render_restaurant(restaurant)
    if restaurant
      render json: restaurant
    else
      render_restaurant_not_found
    end
  end

  def render_restaurant_not_found
    render json: { error: "Restaurant not found!" }, status: :not_found
  end
end