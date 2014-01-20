class ApplicationController < ActionController::API
	include ActionController::HttpAuthentication::Token::ControllerMethods
	include ActionController::MimeResponds
	include ActionController::Helpers
	include ActionController::Cookies
end
