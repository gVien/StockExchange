class SessionsController < ApplicationController
  include ApplicationHelper

  def new
    if current_user
      redirect_to new_stock_path
    else
      @user = User.new
      render "new"
    end
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.password == params[:session][:password]
      login(@user)
      redirect_to new_stock_path
    else
      render "new"
    end
  end

  # def show
  # end

  def destroy
    logout
    redirect_to login_path
  end

end
