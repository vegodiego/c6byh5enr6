class Api::V1::ProductsController < ApplicationController
  
  def index
    products = Product.all
    render json: products, status: 200
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      render json: product
    else
      render json: { errors: @product.errors }, status: 422
    end
  end

end
