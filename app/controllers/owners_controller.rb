class OwnersController < ApplicationController
  def index
    @owner = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to '/owners', notice: 'Owner saved!'
    else
      render '/owners/new'
    end
  end

  def destroy
    Owner.find(params[:id]).destroy
    redirect_to '/owners', notice: "Owner was deleted"
  end

  protected
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :company)
  end

end
