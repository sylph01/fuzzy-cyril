class Item < ActiveRecord::Base
  attr_accessible :detail, :name, :category_ids
  validates :name, :presence => :true
  
  has_many :category_items, :dependent => :destroy
  has_many :categories, :through => :category_items
end
