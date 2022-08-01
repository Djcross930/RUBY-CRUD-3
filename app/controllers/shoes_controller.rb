class ShoesController < ApplicationController
  def index
    shoes = Shoe.all
    render json: shoes.as_json
  end
  
  def show
    shoe = Shoe.find_by(id: params[:id])
    render json: shoe.as_json
  end

  def create
    shoe = Shoe.new
    shoe.brand = params[:brand]
    shoe.color = params[:color]
    shoe.model = params[:model]
    shoe.style = params[:style]
    shoe.save
    render json: shoe.as_json
  end

  def update
    shoe = Shoe.find_by(id: params[:id])
    # shoe.brand = params[:brand] || shoe.brand
    # shoe.color = params[:color] || shoe.color
    # shoe.model = params[:model] || shoe.model
    # shoe.style = params[:style] || shoe.style
    # shoe.save
    shoe.assign_attributes(
      brand: params[:brand] || shoe.brand,
      color: params[:color] || shoe.color,
      model: params[:model] || shoe.model,
      style: params[:style] || shoe.style
    )
    render json: shoe.as_json
  end

  def destroy
    shoe = Shoe.find_by(id: params[:id])
    shoe.destroy
    render json: Shoe.all
  end

end
