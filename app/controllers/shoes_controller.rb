class ShoesController < ApplicationController
  def index
    shoes = Shoe.all
    render json: shoes
  end
  
  def show
    shoe = Shoe.find_by(id: params[:id])
    render json: shoe
  end

  def create
    shoe = Shoe.new
    shoe.brand = params[:brand]
    shoe.color = params[:color]
    shoe.model = params[:model]
    shoe.style = params[:style]
    shoe.save
    render json: shoe
  end

  def update
    shoe = Shoe.find_by(id: params[:id])
    shoe.brand = params[:brand] || shoe.brand
    shoe.color = params[:color] || shoe.color
    shoe.model = params[:model] || shoe.model
    shoe.style = params[:style] || shoe.style
    shoe.save
    render json: shoe
  end

  def destroy
    shoe = Shoe.find_by(id: params[:id])
    shoe.destroy
    render json: Shoe.all
  end





end
