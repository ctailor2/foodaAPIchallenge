require 'spec_helper'

describe "Ping API" do
	before { create(:application) }

	context "with a valid API key" do
		before { get('/api/v1/', nil, { 'Authorization' => 'Token token="secret"' }) }

		it "returns 200 OK" do
			expect(response.status).to eq(200)
		end

		it "responds with a welcome message" do
			expect(json[:message]).to eq("Welcome to the Fooda API!")
		end
	end

	context "with an invalid API key" do
		before { get('/api/v1/', nil, { 'Authorization' => 'Token token="bananas"' }) }

		it "returns 401 unauthorized" do			
			expect(response.status).to eq(401)
		end
	end
end