class ImagesController < ApplicationController
  before_action :admin_required

  def new
    @post = Post.find(params[:post_id])
    @image = Image.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.images.create(image_params)
    flash.alert = 'Image was addded!'
    redirect_to edit_post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @image = Image.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @image = Image.find(params[:id])
    @image.update(image_params)
    flash.alert = 'Image was updated!'
    redirect_to edit_post_path(@post)
  end

  private

  def image_params
    params.require(:image).permit(:caption, :photo)
  end
end
