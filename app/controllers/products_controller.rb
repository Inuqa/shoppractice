class ProductsController < ApplicationController
  before_action :redirect_if_not_admin, only: %i[new create destroy]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(require_params)
    redirect_to @product if @product.save
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: 'Product was successfully deleted.'
  end

  private

  def require_params
    params.require(:product).permit(:name, :price, :stock, :description, :category_id, :product_image)
  end
end
