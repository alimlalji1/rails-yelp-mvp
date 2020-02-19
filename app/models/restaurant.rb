class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  cuisine = %w[chinese italian japanese french belgian]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: cuisine }
end
