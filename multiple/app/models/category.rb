class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :category_items, :dependent => :destroy
  has_many :items, :through => :category_items
end
