class Api::V1::FoodsController < ApplicationController

  def index
    @foods = Food.order(:id)
    render json: @foods
  end

  def create
    food = Food.create(student_params)
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


  private
  def student_params
    params.require(:food).permit(:name, :expiration_date, :quantity, :category_id)
  end

end
