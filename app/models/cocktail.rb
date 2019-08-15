class Cocktail < ApplicationRecord
  # you can't delete a cocktail if it has doses
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true
end
