class Product < ActiveRecord::Base
	has_many :testimonials

	validates :name, length: { minimum: 2 }
	validates :description, length: { minimum: 20 }
	validates :description, length: { maximum: 200 }

# Shouldn't this be here???

# module ProductsHelper
#   def cache_key_for_products
#     count          = Product.count
#     max_updated_at = Product.maximum(:updated_at).try(:utc).try(:to_s, :number)
#     "products/all-#{count}-#{max_updated_at}"
#   end
# end

end