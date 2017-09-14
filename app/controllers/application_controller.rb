# The parent, root class for all controllers
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_library
  def current_library
    @current_library ||= current_user.own_library
  end
end
