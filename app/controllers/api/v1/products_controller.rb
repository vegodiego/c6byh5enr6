class Api::V1::ProductsController < ApplicationController
  
  def index
    products = Product.all
    render json: products, status: 200
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: 201
    else
      render json: { errors: @product.errors }, status: 422
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :price)
    end

end
