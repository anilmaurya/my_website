class Category < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :description
  has_many :items
end
