class Location < ApplicationRecord
  resourcify

  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order(id: :desc) }
end
