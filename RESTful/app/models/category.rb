class Category < ActiveRecord::Base
	validates_presence_of :catname, :description
	has_many :products
end
