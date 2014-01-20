class Dish < ActiveRecord::Base
	belongs_to :restaurant
	has_many :purchases
	has_many :users, through: :purchases
end
