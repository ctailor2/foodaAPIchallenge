class DishSerializer < ActiveModel::Serializer
	attributes :id, :name, :description, :restaurant

	def restaurant
		object.restaurant.name
	end
end