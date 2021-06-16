class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [ :show, :review ]


  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def review
    @restaurant = Restaurant.find(params[:id])
    @content = @restaurant.content
    @rating = @restaurant.rating
  end

  private

  def restaurant_params
    params.require(:restaurant).permit( :name, :address, :category, :phone_number)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
