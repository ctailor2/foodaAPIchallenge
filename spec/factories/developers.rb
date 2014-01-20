# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :developer do
  	username 'developer'
  	password 'password'
  	password_confirmation 'password'
  end
end
