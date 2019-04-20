class SessionsController < ApplicationController
	helper :all	
	def new
	end

	def create
		#complete this method
		user = User.authenticate(params[:email], params[:password])
		session[:current_user_id] = user.id
		if is_user_logged_in?
			flash[:success] = 'You have successfully logged in'
			redirect_to root_url
		end
	end

	def destroy
		#complete this method
	end
	
end
