class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.password == params[:session][:password]
      p "path is #{new_stock_path}"
      redirect_to new_stock_path
    else
      render "new"
    end
  end

  def show
  end
end
