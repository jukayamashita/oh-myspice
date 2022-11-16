class SpicesController < ApplicationController
  def index
    @spices = Spice.all
  end

  def new
    @spice = Spice.new
  end

  def create
    @spice = Spice.new(spice_params)
    if @spice.save
      redirect_to root_path(@spice)
    else
      render :new
    end
  end


  def show

  end


  private
  def spice_params
    params.require(:spice).permit(:item_name, :image, :limit, :memo).merge(user_id: current_user.id)
  end
end