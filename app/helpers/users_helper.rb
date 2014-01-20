module UsersHelper
	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id])
		end
	end

	def set_current_user(new_current_user)
		@current_user = new_current_user
		session[:user_id] = @current_user.id
	end

	def logged_in?
		!session[:user_id].nil?
	end
end