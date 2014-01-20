FoodaAPIchallenge::Application.routes.draw do
  namespace :api, default: { format: 'json' } do
    namespace :v1 do
    	get '/' => 'application#ping'
    end
  end
end
