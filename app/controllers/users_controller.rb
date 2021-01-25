class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @profile = @user.profile
    @like_id = @user.like_id
  end
end
