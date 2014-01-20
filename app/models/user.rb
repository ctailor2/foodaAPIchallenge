class User < ActiveRecord::Base
	has_many :purchases
	has_many :dishes, through: :purchases
end
