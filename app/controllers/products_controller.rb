class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(params)
  end

  def new; end

  def create; end

  def remove; end
end
