class PropertiesController < ApplicationController
  def index
  end

  def new
    @property = Property.new
  end

  def show
    @property = Property.find(params[:id])
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to root_path, notice: 'Building added'
    else
      render 'new'
    end
  end

  protected
  def property_params
    params.require(:property).permit(:address, :city, :state, :zip, :description)
  end

end
