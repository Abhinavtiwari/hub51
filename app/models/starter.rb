class Starter < ActiveRecord::Base
  belongs_to :category
  has_many :first_selections, class_name: "Selection", foreign_key: "first_starter_id"
  has_many :second_selections, class_name: "Selection", foreign_key: "second_starter_id"
  has_many :restrictions

  def points
    first_selections.count + second_selections.count / 2
  end
end
