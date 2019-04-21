class SessionsController < ApplicationController
	helper :all	
	def new
	end

	def create
		#complete this method
		user = User.find_by(email: params[:session][:email])
		session[:current_user_id] = user.id
		if user && user.authenticate(params[:session][:password])		
			if is_user_logged_in?
				
				log_in user
				flash[:success] = 'You have successfully logged in'
				redirect_to user
			else
				flash.now[:error] = 'Invalid email/password combination'
				render 'new'
			end
		end
	end

	def destroy
		#complete this method
		log_out
    		redirect_to root_url
	end
	
end
