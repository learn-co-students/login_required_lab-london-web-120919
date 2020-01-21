class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    if session[:name]
      return session[:name]
    else
      nil
    end
  end

  private

  def logged_in
    unless current_user
      redirect_to login_path
    end
  end

end
