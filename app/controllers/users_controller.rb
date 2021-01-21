class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @profile = user.profile
    @like_id = user.like.id
  end
end
