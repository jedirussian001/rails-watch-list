class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, presence: true #movie and list cannot be blank
  validates :movie, uniqueness: { scope: :list } #is unique for a given movie/list couple
  validates :comment, length: { minimum: 6 } #has a comment & comment cannot be shorter than 6 characters
end
