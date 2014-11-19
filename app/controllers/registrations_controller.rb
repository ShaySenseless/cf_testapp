class RegistrationsController < Devise::RegistrationsController
	def sign_up(resource_name, resource)
	  if resource_name.constantize.count == 1
	    resource.update_attribute(:is_admin, true)
	  end
	  super
	end
	skip_before_filter :verify_authenticity_token, :only => :create
end