class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end

# is unique for a given cocktail/ingredient couple (FAILED - 3)
