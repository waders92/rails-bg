class SectionsController < ApplicationController
  before_action :admin_required

  def new
    @post = Post.find(params[:post_id])
    @section = Section.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.sections.create(section_params.merge(user: current_user))
    flash.alert = 'Section was addded!'
    redirect_to edit_post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @section = Section.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @section = Section.find(params[:id])
    @section.update(section_params)
    flash.alert = 'Section was updated!'
    redirect_to edit_post_path(@post)
  end

  def section_params
    params.require(:section).permit(:title, :content, :gist)
  end
end
