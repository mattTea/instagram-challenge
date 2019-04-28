class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find(params[:id])
  end
  
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:notice] = "Sham pic successfully added!"
      redirect_to pictures_path
    else
      render 'new'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:notice] = "Pic deleted."
    redirect_to pictures_path
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :image)
    end
end


