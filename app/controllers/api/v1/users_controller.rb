class Api::V1::UsersController < Api::V1::ApplicationController
	def auth
		user = User.find_by_username(params[:username])
		if user.authenticate(params[:password])
			session[:user_id] = user.id
		else
			head :unauthorized
		end
	end

	def restaurants
		id = session[:user_id]
		if id
			user = User.find(id)
			render json: { restaurants: user.restaurants.uniq }
		else
			head :unauthorized
		end
	end

	def dishes
		id = session[:user_id]
		if id
			user = User.find(id)
			render json: { dishes: user.dishes.uniq }
		else
			head :unauthorized
		end
	end
end