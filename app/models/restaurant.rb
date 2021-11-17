class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true, length: { minimum: 6 }
  validates :category, inclusion: { in: CATEGORY }
end
