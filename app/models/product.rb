class Product < ActiveRecord::Base
	validates :name, length: { minimum: 2 }
	validates :description, length: { minimum: 20 }
	validates :description, length: { maximum: 200 }
end