class ApisController < ApplicationController
  
  def api
    products = Product.all
    render json: products, status: 200
  end

end
