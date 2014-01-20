# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
  	factory :thai do
  		name 'Amarit Thai Grill'
  	end

  	factory :mexican do
  		name 'Barrio Urban Taqueria'
  	end

  	factory :healthy do
  		name 'Eat Fit'
  	end
  end
end
