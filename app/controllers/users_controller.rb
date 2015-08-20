class UsersController < ApplicationController
  include ApplicationHelper

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      login(@user)
      redirect_to stocks_path
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
