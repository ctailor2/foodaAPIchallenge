# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :application do
  	association :developer, factory: :developer
  	name 'My Awesome Fooda App'
  	key 'secret'
  end
end
