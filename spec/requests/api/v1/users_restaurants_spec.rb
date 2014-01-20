require 'spec_helper'

describe "Users Restaurants" do
	let(:user) { create(:chirag) }
	let(:thai) { create(:thai) }
	let(:mexican) { create(:mexican) }
	let(:healthy) { create(:healthy) }

	before do
		create(:application)
		fried_rice = create(:fried_rice, restaurant: thai)
		pepper_steak = create(:pepper_steak, restaurant: thai)
		chicken_tacos = create(:chicken_tacos, restaurant: mexican)
		create(:purchase, user: user, dish: fried_rice)
		create(:purchase, user: user, dish: pepper_steak)
		create(:purchase, user: user, dish: chicken_tacos)
	end

	context "when a user is logged in" do
		before do
			post('/api/v1/users/auth', { username: user.username, password: user.password }, { 'Authorization' => 'Token token="secret"' })
			get('/api/v1/users/restaurants', nil, { 'Authorization' => 'Token token="secret"' })
		end

		it "returns the restaurants the user has tried" do
			expect(json(response.body)[:restaurants]).to include(json(thai.to_json), json(mexican.to_json))
		end

		it "returns the correct number of restaurants" do
			expect(json(response.body)[:restaurants].length).to eq(2)
		end

		it "does not return any restaurants the user has not tried" do
			expect(json(response.body)[:restaurants]).not_to include(json(healthy.to_json))
		end
	end

	context "when a user is not logged in" do
		it "returns 401 unauthorized" do
			get('/api/v1/users/restaurants', nil, { 'Authorization' => 'Token token="secret"' })
			expect(response.status).to eq(401)
		end
	end
end