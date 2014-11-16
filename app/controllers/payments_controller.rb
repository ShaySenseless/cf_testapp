class PaymentsController < ApplicationController
	def create

# Set your secret key: remember to change this to your live secret key in production
# See your keys here https://dashboard.stripe.com/account
Stripe.api_key = Rails.configuration.stripe[:secret_key]

# Get the credit card details submitted by the form
token = params[:stripeToken]

# Create the charge on Stripe's servers - this will charge the user's card
begin
  charge = Stripe::Charge.create(
    :amount => 1000, # amount in cents, again
    :currency => "eur",
    :card => token,
    :description => "payinguser@example.com"
  )
rescue Stripe::CardError => e
  # The card has been declined
end

  redirect_to :root
	flash.now[:alert] = ("thank you for your order.")
		
	end
end