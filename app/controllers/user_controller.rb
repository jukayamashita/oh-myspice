class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spices = @user.spices
    @nickname = user.nickname
  end
end
