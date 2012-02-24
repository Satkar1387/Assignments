class Product < ActiveRecord::Base
	belongs_to :category
	has_many :product_sizes, :dependent => :destroy
	has_many :sizes, :through => :product_sizes
  validates_presence_of :pname
validates_presence_of :sizes
end
