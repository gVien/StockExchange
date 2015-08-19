class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.password == params[:session][:password]
      redirect_to stocks_path
    else
      render "new"
    end
  end
end
