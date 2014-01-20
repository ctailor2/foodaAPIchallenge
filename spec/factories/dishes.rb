# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dish do
  	factory :fried_rice do
  		association :restaurant, factory: :thai
  		name 'Fried Rice'
  		description 'Thai fried rice with egg, onion, and your choice of chicken or beef'
  	end

  	factory :kungpao_chicken do
  		association :restaurant, factory: :thai
  		name 'Kungpao Chicken'
  		description 'Stir-fried chicken with onion, bell pepper, water chestnut, chili, & peanut'
  	end

  	factory :pepper_steak do
  		association :restaurant, factory: :thai
  		name 'Amarit Pepper Steak'
  		description 'Stir-fried tender beef, bell pepper, onion, mushrooms, peapod, tomato and water chestnut in a tasty thick thai sauce'
  	end

  	factory :chicken_enchies do
  		association :restaurant, factory: :mexican
  		name 'Barrio Urban Taqueria'
  		description 'Three small enchiladas topped with mild ranchera sauce and queso'
  	end

  	factory :chicken_tacos do
  		association :restaurant, factory: :mexican
  		name 'Barrio Urban Taqueria'
  		description '6 oz. of seasoned grilled chicken, diced and served with queso, cilantro, lime, and three 4" homemade corn tortillas'
  	end

  	factory :steak_tacos do
  		association :restaurant, factory: :mexican
  		name 'Barrio Urban Taqueria'
  		description '6 oz. of seasoned grilled steak, diced and served with queso, cilantro, lime, and three 4" homemade corn tortillas'
  	end

  	factory :chipotle_wrap do
  		association :restaurant, factory: :healthy
			name 'Chipotle Chicken Wrap'
			description 'Whole-wheat tortilla wrap with grilled chicken, black beans, corn, cherry tomato, red onion with our house-made chipotle dressing'
  	end

  	factory :portobello_wrap do
  		association :restaurant, factory: :healthy  		
  		name 'Portobello Pesto Wrap'
  		description 'Whole-wheat tortilla wrap with roasted portobella mushrooms, mixed greens and roasted peppers'
  	end

  	factory :chicken_salad_wrap do
  		association :restaurant, factory: :healthy  		
  		name 'Chicken Salad Wrap'
  		description 'No-mayo chicken salad sandwich on multi-grain bread with greek yogurt, lemon juice, red onion, celery and fresh grapes'
  	end
  end
end
