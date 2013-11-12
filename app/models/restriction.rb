class Restriction < ActiveRecord::Base
  belongs_to :starter
  belongs_to :entree
end
