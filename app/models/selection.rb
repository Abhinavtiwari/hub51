class Selection < ActiveRecord::Base
  belongs_to :first_starter, class_name: "Starter"
  belongs_to :second_starter, class_name: "Starter"
  belongs_to :first_entree, class_name: "Entree"
  belongs_to :second_entree, class_name: "Entree"

  validates :diner, presence: true
end
