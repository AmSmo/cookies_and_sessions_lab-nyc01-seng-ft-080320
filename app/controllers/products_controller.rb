class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  def add
    byebug
    cart << item
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit!
  end
end
