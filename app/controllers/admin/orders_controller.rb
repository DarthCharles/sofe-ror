class Admin::OrdersController < Admin::BaseController

  before_action :find_order, only: [:destroy]

  def index
    @orders = Order.all
  end

  def destroy
    flash[:danger] = "Order ##{@order.id} deleted."
    @order.destroy
    redirect_to admin_orders_path
  end

  def complete
    order = Order.find(params[:order_id])
    if order.update(status: 'DELIVERED')
      flash[:info] = 'Order marked as completed.'
      redirect_to admin_orders_path
    else
      flash[:danger] = 'An error ocurred. Order wasn\'t marked as completed.'
      redirect_to admin_orders_path
    end
  end

  def find_order
    @order = Order.find(params[:id])
  end

end
