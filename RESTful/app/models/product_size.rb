class ProductSize < ActiveRecord::Base
	belongs_to :size
	belongs_to :product
 
end
