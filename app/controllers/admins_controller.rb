class AdminsController < ApplicationController
  def index
    admin_required
    @posts = Post.all
  end
end
