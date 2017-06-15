class Api::V1::FoodsController < ApplicationController
  def index
    @foods = Food.order(:id)
    render json: @foods
  end

  def show
    @food = Food.find_by(id: params[:id])
    render json: @food
  end

end
