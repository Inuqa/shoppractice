class ApplicationController < ActionController::Base
  include RailsWarden::Authentication
  helper_method :current_user
  helper_method :admin?

  def current_user
    user
  end

  def admin?
    current_user&.admin?
  end

  def redirect_if_not_admin
    redirect_to root_path unless admin?
  end
end
