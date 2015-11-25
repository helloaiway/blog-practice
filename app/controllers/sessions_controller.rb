class SessionsController < ApplicationController
	before_action :session_params, only: [:create]
	skip_before_action :logged_in_user, only: [:new, :signup, :create]

	def new
	end

	def create
		#debugger
		user = User.find_by(email: session_params[:name].downcase) || User.find_by(:name => session_params[:name])
		if user && user.authenticate(session_params[:password])
			remember user
			log_in user
			redirect_to user
		else
			flash.now[:danger] = 'Login failed, Username or password is unvalide.'
			render 'new'
		end
		
	end

	def destroy
		log_out
		redirect_to root_url
	end

	private
		def session_params
			params.require(:session).permit(:name, :password)
		end
end
