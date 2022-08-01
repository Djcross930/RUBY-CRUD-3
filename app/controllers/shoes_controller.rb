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


end
