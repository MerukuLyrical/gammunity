class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "/tpics/#{comment.tpic.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(:user_id current_user.id, :tpic_id params[:tpic_id])
  end
end
