require 'spec_helper'


describe User do
	it "has an email" do
		user = User.new 
		user.email = 'test'
		expect(user.email).to be_a(String)
	end
	it "has a phone number" do
		user = User.new
		user.phone_number = '555-555-5555'
		expect(user.phone_number).to eq('555-555-5555')
	end
end
