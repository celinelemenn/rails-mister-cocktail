class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail_id, :ingredient_id, presence: true

  # validates_uniqueness_of :ingredient, scope: :cocktail
  # you can't delete an ingredient if it is used by one cocktail
  validates :cocktail, uniqueness: { scope: :ingredient }
end
