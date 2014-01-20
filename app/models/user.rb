class User < ActiveRecord::Base
	has_many :purchases
	has_many :dishes, through: :purchases
	has_secure_password
end
