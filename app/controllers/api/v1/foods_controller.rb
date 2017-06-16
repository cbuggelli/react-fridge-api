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
    @food = Food.find_by(id: params[:id])
    render json: @food
  end


  private
  def student_params
    params.require(:food).permit(:name, :days_until_expiration, :quantity, :category_id)
  end

end
