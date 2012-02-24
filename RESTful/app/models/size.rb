class Size < ActiveRecord::Base
	has_many :product_sizes
	has_many :products, :through => :product_sizes
  validates_presence_of :sizename
end
