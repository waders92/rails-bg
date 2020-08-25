class ApplicationController < ActionController::Base
  def admin_required
    return if current_user&.isAdmin?

    redirect_to root_path
    flash[:alert] = 'You are not an authorized administrator!'
  end

  def render_not_found(status = :not_found)
    render plain: status.to_s.titleize.to_s, status: status
  end
end
