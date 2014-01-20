class Api::V1::UsersController < Api::V1::ApplicationController
	include UsersHelper

	def auth
		user = User.find_by_username(params[:username])
		if user.authenticate(params[:password])
			set_current_user(user)
		else
			head :unauthorized
		end
	end

	def restaurants
		if logged_in?
			render json: { restaurants: current_user.restaurants.uniq }
		else
			head :unauthorized
		end
	end

	def dishes
		if logged_in?
			render json: { dishes: current_user.dishes.uniq }
		else
			head :unauthorized
		end
	end
end