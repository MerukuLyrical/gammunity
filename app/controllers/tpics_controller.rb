class TpicsController < ApplicationController

  def index
    @tpic = Tpic.all.order("created_at_DESC")
  end

  def create
    Tpic.create(tpic_params)
  end

  def show
    
  end

  def destroy
  end

  def show
  end

  def update
  end

  def edit
  end
end
