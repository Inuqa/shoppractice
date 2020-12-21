class ApplicationController < ActionController::Base
  include RailsWarden::Authentication

  def current_user
    warden.user
  end

  helper_method :current_user
end
