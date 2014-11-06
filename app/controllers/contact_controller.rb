class ContactController < ApplicationController

	# Normally named "new"
	def form_input
		@contact = Contact.new
	end

	# Normally named "create"
	def form_output
		if params[:name].present?
			@contact_form_output = params[:name], params[:email], params[:message]
		end

		# Mailer action
		ActionMailer::Base.mail(from: params[:email], to: 'shayofer89@gmail.com', subject: "New message from contact form", body: params[:message]).deliver

		# Intentional routing mistake fix
		render "form_result"	
	end
end