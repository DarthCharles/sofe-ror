class Admin::ProductsController < Admin::BaseController

  before_action :find_ingredient, only: [:show, :destroy, :edit, :update]

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path(@product)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash.now[:success] = 'Product Updated'
      redirect_to admin_products_path(@product)
    else
      render 'edit'
    end
  end

  def destroy
    flash.now[:danger] = 'Product deleted'
    @product.destroy
    redirect_to admin_products_path
  end

  private

  def find_ingredient
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :image, :product_type, :description)
  end
end
