class SpicesController < ApplicationController
  def index
    @spices = Spice.all
  end

  def create

  end

  def new
    @spice = Spice.new

  end

  def show

  end
end