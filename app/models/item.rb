class Item < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :category
  attr_accessible :file, :name, :category_id
  has_attached_file :file
end
