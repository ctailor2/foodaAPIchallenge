# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	factory :chirag do
  		username 'ctailor2'
  		password 'password'
  		password_confirmation 'password'
  	end

  	factory :anthony do
  		username 'anthony.bc'
  		password 'password'
  		password_confirmation 'password'
  	end
  end
end
