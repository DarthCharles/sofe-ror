class OrdersController < ApplicationController

  def index
    @product           = Product.find(params[:product])
    @order             = Order.create(status: 'CHECKOUT_PAGE', product: @product, customer: nil, total: @product.total)
    session[:order_id] = @order.id
  end


  def place_order
    customer = Customer.find_or_create_by(customer_params)
    order    = Order.find(params[:order_id])

    if order.update(customer: customer, status: 'PENDING')
      redirect_to order_confirm_path(order)
    else
      flash.now[:notice] = 'Error'
      redirect_to order_index_path(@product)
    end

  end

  def confirm
    @order = Order.find(params[:order_id])
  end


  private
  def customer_params
    params.require(:customer).permit(:name, :address, :phone_number)
  end

end
