class ContactController < ApplicationController

	def form_input

		def mailer
			ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'shayofer89@gmail.com', :subject => "Welcome to My Awesome Site", :body => 'I am the email body.').deliver
		end
	
	end

	def form_output
		render "form_result"	
	end
end