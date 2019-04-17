class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		@current_user
		if is_user_logged_in?
			flash[:success] = 'You have logged in'
			redirect_to log_in_url	
		end
	end

	def destroy
		#complete this method
	end
end
