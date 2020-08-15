class PostsController < ApplicationController
  # before_action :authenticate_user!, only: %i[new create show edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    admin_required
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash.alert = 'Post was created!'
      redirect_to root_path
    else
      render 'posts/new'
    end
  end

  def edit
    admin_required
    @post = Post.find_by(id: params[:id])
    return render_not_found if @post.blank?
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :isPublishable)
  end
end
