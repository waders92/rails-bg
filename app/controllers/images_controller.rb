class ImagesController < ApplicationController
  before_action :admin_required

  def new
    @post = Post.find(params[:post_id])
    @image = Image.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.images.create(image_params.merge(user: current_user))
    flash.alert = 'Image was addded!'
    redirect_to edit_post_path(@post)
  end

  private

  def image_params
    params.require(:image).permit(:caption, :image)
  end
end
