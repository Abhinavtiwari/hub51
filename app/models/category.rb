class Category < ActiveRecord::Base
  has_many :starters
  has_many :entrees
end
