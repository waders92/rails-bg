class ApplicationController < ActionController::Base

  def admin_required
    unless current_user && current_user.isAdmin?
      redirect_to root_path
      flash[:alert] = 'You are not an authorized administrator!'
    end
  end
end
