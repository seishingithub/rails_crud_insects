class InsectsController < ApplicationController

  def index
    @insect = Insect.new
    @insects = Insect.all
  end

  def create
    @insect = Insect.create(insect_params)
    if @insect.save
      redirect_to insects_path
    else
      render :index
    end
  end

  private
  def insect_params
    params.require(:insect).permit(:name, :characteristic)
  end
end