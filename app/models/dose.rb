class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail, :ingredient , presence: true
  validates :ingredient, uniqueness: { scope: :cocktail, message: "the ingredient of this cocktail has already been created pls update it" }
end
