class Api::V1::UsersController < Api::V1::ApplicationController
	def auth
		user = User.find_by_username(params[:username])
		if user.authenticate(params[:password])
			session[:user_id] = user.id
		else
			head :unauthorized
		end
	end
end