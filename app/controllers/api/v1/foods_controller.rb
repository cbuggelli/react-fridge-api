class Api::V1::FoodsController < ApplicationController

  def index
    @foods = Food.order(:id)
    render json: @foods
  end

  def create
    food = Food.create(food_params)
    render json: food
  end

  def show
    food = Food.find_by(id: params[:id])
    render json: food
  end

  def destroy
    food = Food.find_by(id: params[:id])
    food.destroy
    render json: food
  end

  def update
    @food = Food.find_by(id: params[:id])
    @food = Food.save(food_params)
  end


  private
  def food_params
    params.require(:food).permit(:name, :expiration_date, :quantity, :category_id)
  end

end
