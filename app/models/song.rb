class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, presence: true, if: :released
  validates :release_year, numericality: { less_than_or_equal_to: Time.now.year }, if: :released
  validates :release_year, uniqueness: true
  validates :artist_name, presence: true
end
