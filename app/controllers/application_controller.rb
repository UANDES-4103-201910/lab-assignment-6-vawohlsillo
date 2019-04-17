class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_user_logged_in?
  def index

  end

  def current_user
	#complete this method
	@current_user ||= User.find_by_id(session[:user])
  end

  def is_user_logged_in?
	#complete this method
  	logged_in = false
	if @current_user != nil
		logged_in = true
	end
	if logged_in then true else redirect_to root_path end 
  end
end
