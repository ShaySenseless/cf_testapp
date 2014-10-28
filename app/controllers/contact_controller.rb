class ContactController < ApplicationController

	def form_input
		def new
			@contact = Contact.new
		end
	end

	def form_output
		render "form_result"
	end
end