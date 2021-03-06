class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:name]
      session[:name]
    else
      nil
    end
  end

  def hello
    return redirect_to login_path unless session.include? :name
  end

end
