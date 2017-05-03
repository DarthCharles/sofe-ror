class MenuController < ApplicationController

  def index
    type = params[:type]

    case type
    when 'meal'
      @products = Product.meal
    when 'dessert'
      @products = Product.dessert
    else
      @products = Product.all
    end
  end

end
