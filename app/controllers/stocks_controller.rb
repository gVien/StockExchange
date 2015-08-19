class StocksController < ApplicationController
  # def index
  #   redirect_to new_stock_path
  # end
  # def new
  #   @stock = Stock.new
  # end
  def show
    @stock = Stock.find(params[:id])
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
