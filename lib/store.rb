class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }

  # custom validation method
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      # usually it's :{field_name_that_error_tracks}, but since this boolean thing, target :base for just overall the entire model
      errors.add(:base, "stores must carry at least one of mens_apparel, or womens_apparel")
    end
  end

end
