class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates_numericality_of :rating, only_integer: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
