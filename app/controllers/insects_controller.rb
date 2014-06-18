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

  def show
    @insect = Insect.find(params[:id])
  end

  def edit
    @insect = Insect.find(params[:id])
  end

  def update
    @insect = Insect.find(params[:id])
    @insect.update_attributes!(insect_params)

    redirect_to insects_path
  end

  private
  def insect_params
    params.require(:insect).permit(:name, :characteristic)
  end
end