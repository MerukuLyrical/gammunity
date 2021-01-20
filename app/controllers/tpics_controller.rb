class TpicsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @tpic = Tpic.all
    # .order("created_at_DESC")
  end

  def create
    Tpic.create(tpic_params)
  end

  def new
    @tpic = Tpic.new
  end

  def destroy
    tpic = Tpic.find(params[:id])
    tpic.destroy
  end

  def show
    @tpic = Tpic.find(params[:id])
  end

  def update
    tpic = Tpic.find(params[:id])
    tpic.update(tweet_params)
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
