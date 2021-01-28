class TpicsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @tpics = Tpic.all
  end

  def create
    @tpic = Tpic.create(tpic_params)
    if @tpic.save
      redirect_to root_path
    end
  end

  def new
    @tpic = Tpic.new
  end

  def destroy
    tpic = Tpic.find(params[:id])
    if tpic.destroy
      redirect_to root_path
    end
  end

  def show
    @tpic = Tpic.find(params[:id])
    @comment = Comment.new
    @comments = @tpic.comments.includes(:user)
  end

  def update
    tpic = Tpic.find(params[:id])
    if tpic.update(tpic_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
    @tpic = Tpic.find(params[:id])
  end


  private
  def tpic_params
    params.require(:tpic).permit(:text, :title).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
