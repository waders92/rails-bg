class PostsController < ApplicationController
  # before_action :authenticate_user!, only: %i[new create show edit update destroy]

  def index; end

  def new
    admin_required
    @post = Post.new
  end
end
