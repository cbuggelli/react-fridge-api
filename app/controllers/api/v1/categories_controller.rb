class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.order(:id)
    render json: @categories
  end

  def create
  end


  def show
    @category = Category.find_by(id: params[:id])
    render json: @category
  end


end
