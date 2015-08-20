class StocksController < ApplicationController
  include ApplicationHelper

  def index
    redirect_to new_stock_path
  end

  def new
    if current_user
      @stock = Stock.new
    else
      redirect_to login_path
    end
  end

  def show
    if current_user
      @stock = Stock.find(params[:id])
    else
      redirect_to login_path
    end
  end

  def create
    @stock = Stock.new(stock_params)

    if @stock.save
      redirect_to stock_path(@stock)
    else
      render "new"
    end
  end



  private
  def stock_params
    params.require(:stock).permit(:symbol)
  end
end
