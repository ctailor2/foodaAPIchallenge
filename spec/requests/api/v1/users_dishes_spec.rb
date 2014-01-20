require 'spec_helper'

describe "Users Dishes" do
	let(:user) { create(:chirag) }
	let(:thai) { create(:thai) }
	let(:healthy) { create(:healthy) }
	let(:fried_rice) { create(:kungpao_chicken, restaurant: thai) }
	let(:chipotle_wrap) { create(:chipotle_wrap, restaurant: healthy) }
	let(:portobello_wrap) { create(:portobello_wrap, restaurant: healthy) }

	before do
		create(:application)
		create(:purchase, user: user, dish: fried_rice)
		create(:purchase, user: user, dish: chipotle_wrap)
		create(:purchase, user: user, dish: fried_rice)
	end
	
	context "when a user is logged in" do
		before do
			post('/api/v1/users/auth', { username: user.username, password: user.password }, { 'Authorization' => 'Token token="secret"' })
			get('/api/v1/users/dishes', nil, { 'Authorization' => 'Token token="secret"' })
		end

		it "returns the dishes the user has tried" do
			expect(json(response.body)[:users]).to include({ id: fried_rice.id, name: fried_rice.name, description: fried_rice.description, restaurant: thai.name }, { id: chipotle_wrap.id, name: chipotle_wrap.name, description: chipotle_wrap.description, restaurant: healthy.name })
		end

		it "returns the correct number of dishes" do
			expect(json(response.body)[:users].length).to eq(2)
		end

		it "does not return any dishes the user has not tried" do
			expect(json(response.body)[:users]).not_to include({ id: portobello_wrap.id, name: portobello_wrap.name, description: portobello_wrap.description, restaurant: healthy.name })
		end
	end

	context "when a user is not logged in" do
		it "returns 401 unauthorized" do
			get('/api/v1/users/dishes', nil, { 'Authorization' => 'Token token="secret"' })
			expect(response.status).to eq(401)
		end
	end
end