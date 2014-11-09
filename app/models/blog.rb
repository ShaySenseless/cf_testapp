class Blog < ActiveRecord::Base
	has_many :comments

	validates :title, length: { minimum: 1, maximum: 200 }
	validates :body, length: { minimum: 1 }
end