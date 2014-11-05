class PhotosController < ApplicationController
  # Instructs the Controller to Handle Record Not Found requests with the not found method.
  rescue_from ActiveRecord::RecordNotFound, with: :not_found


  def show
    @photo = Photo.find(params[:id])
  end

  def index
    @photo = Photo.all
  end

  def create
    if @photo
      flash[:notice] = 'New Photo Created'
      redirect_to photo_path(@photo)
    else
      flash[:error] = 'Failed to Create Photo'
      redirect_to new
    end
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(post_params)
      flash[:notice] = "Photo #{params[:id]} updated."
      redirect_to photo_path(@photo)
    else
      flash[:error] = "Photo #{params[:id]} not updated."
      redirect_to edit_photo_path(@photo)
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  private
  def post_params
    params.require(:photo).permit(:title, :author, :url)
  end

  def not_found
      flash[:error] = "Photo #{params[:id]} not found"
      redirect_to photos_path
  end
end
