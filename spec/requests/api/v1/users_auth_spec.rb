require 'spec_helper'

describe "Users Authentication" do
	let(:user) { create(:chirag) }
	before { create(:application) }

	context "with correct credentials" do
		before { post('/api/v1/users/auth', { username: user.username, password: user.password }, { 'Authorization' => 'Token token="secret"' }) }
		
		it "logs the user in" do
			expect(session[:user_id]).to eq(user.id)
		end
	end

	context "with incorrect credentials" do
		before { post('/api/v1/users/auth', { username: user.username, password: 'bananas' }, { 'Authorization' => 'Token token="secret"' }) }

		it "does not log the user in" do
			expect(session[:user_id]).to be_nil
		end

		it "returns 401 unauthorized" do
			expect(response.status).to eq(401)				
		end
	end
end