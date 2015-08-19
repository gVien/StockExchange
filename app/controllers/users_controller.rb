class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to stocks_path
    p "Stock path is #{stocks_path}"
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
