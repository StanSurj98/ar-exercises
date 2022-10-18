class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }

  # custom validation method
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if !mens_apparel? && !womens_apparel?
      errors.add("stores must carry at least one of mens_apparel, or womens_apparel")
    end
  end
  
end
