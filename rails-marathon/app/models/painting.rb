class Painting < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true

  belongs_to :gallery
end
