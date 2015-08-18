class StocksController < ApplicationController
  def new
    render "new"
  end

  def create
    @stocks = Stock.new
  end
end
