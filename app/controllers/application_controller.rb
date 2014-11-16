class ApplicationController < ActionController::Base
  def self.sweep(time = 15.minute)
	  if time.is_a?(String)
	    time = time.split.inject { |count, unit| count.to_i.send(unit) }
	  end

		delete_all "updated_at < '#{time.ago.to_s(:db)}' OR
	  created_at < '#{2.days.ago.to_s(:db)}'"
	end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end