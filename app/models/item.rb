class Item < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :category
  attr_accessible :file, :name, :category_id, :description
  has_attached_file :file, :styles => { :small => '150*150>'}
end
