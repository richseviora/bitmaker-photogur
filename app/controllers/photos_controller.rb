class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
    redirect_to photos_path unless @photo
  end

  def index
    @photo = Photo.all
  end

  def create
    @photo = Photo.create(post_params)
    if @photo
      redirect_to photo_path(@photo)
    else
      redirect_to photos_path
    end
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
    redirect_to photos_path unless @photo
  end

  def update
    @photo = Photo.find(params[:id])
    redirect_to photos_path unless @photo
    @photo.update(post_params)
    redirect_to photo_path(@photo)
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
end
