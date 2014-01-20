module Requests
	module JsonHelpers
		def json(obj)
			JSON.parse(obj, symbolize_names: true)
		end
	end
end