class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :logged_in_user
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  # ensure use has been loged in
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_path
      end
      #debugger
    end
end
