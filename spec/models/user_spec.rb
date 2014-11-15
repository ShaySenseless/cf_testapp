require 'rails_helper'
	Rspec.describe User, :type => :model do

	context 'email present' do
		before { user = build(:user, email: "example@email.com") }

		it 'should return users email'
			expect(user.email).to eq 'example@email.com'
		end
	end

	context 'email missing' do
	  before {user = build(:user, email: "not_an_email") }

		it 'should return nothing' do
			expect(user.should_not be_valid)
		end
	end