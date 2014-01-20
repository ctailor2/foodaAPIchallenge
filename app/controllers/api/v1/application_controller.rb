class Api::V1::ApplicationController < ActionController::API
	include ActionController::HttpAuthentication::Token::ControllerMethods
	include ActionController::MimeResponds
	include ActionController::Helpers
	include ActionController::Cookies

	before_action :restrict_access

	def ping
		render json: { message: "Welcome to the Fooda API!" }
	end

	private

	def restrict_access
		authenticate_or_request_with_http_token do |token, options|
			Application.exists?(key: token)
		end
	end
end
