class PostsController < ApplicationController
  # before_action :authenticate_user!, only: %i[new create show edit update destroy]

  def index
    @posts = if params[:term]
      Post.where('LOWER(title) LIKE ?', "%#{params[:term].downcase}%").order('created_at ASC').paginate(page: params[:page], per_page: 5)
      else
        @posts = Post.all.order('created_at ASC').paginate(page: params[:page], per_page: 5)
      end
             
    @total_posts = @posts.count
  end

  def new
    admin_required
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash.alert = 'Post was created!'
      redirect_to admins_path
    else
      render 'posts/new'
    end
  end

  def edit
    admin_required
    @post = Post.find_by(id: params[:id])
    return render_not_found if @post.blank?
  end

  def update
    admin_required
    @post = Post.find_by(id: params[:id])
    @post.update(post_params)
    if @post.save
      flash.alert = 'Post was updated!'
      redirect_to admins_path
    else
      flash.alert = 'Post NOT Updted!'
      render 'posts/edit'
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    return render_not_found if @post.blank?
  end

  def destroy
    admin_required
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash.alert = 'Post was deleted!'
    redirect_to admins_path
  end

  def about; end

  private

  def post_params
    params.require(:post).permit(:title, :topic, :image, :isPublishable)
  end
end
