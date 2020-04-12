class Model < ApplicationRecord

  validates :title, presence: true
  validates :description, length: {minimum: 10}
  # validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

end
