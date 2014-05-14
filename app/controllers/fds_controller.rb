class FdsController < ApplicationController
  def new
    @fd = Fd.new
  end

  def create
    @fd = Fd.new(params[:fd])
    if @fd.save
      flash[:success] = "FD Account Opened Successfully!"
      redirect_to fds_path
    else
      flash[:error] = "Couldn't Open FD"  
      render  'new'
    end
  end

  def edit
    @fd = Fd.find(params[:id])
  end

  def index
    @fd = Fd.all
  end

  def update
    @fd = Fd.find(params[:id])

      if @fd.update_attributes(params[:fd])
        flash[:success] = "Updated your FD Account"
        redirect_to fds_path(@fd)
      else
        flash[:alert] ="Fill the necessary fields"
        render 'edit'
      end
  end

  def destroy
    @fd = Fd.find(params[:id])
    @fd.destroy
    flash[:notice] = "Your FD Account Get Deleted"
    redirect_to fds_path
  end

  def show
    @fd = Fd.find(params[:id])
  end
end
