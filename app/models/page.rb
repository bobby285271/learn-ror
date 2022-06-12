class Page < ApplicationRecord
  # To check: Trailing 's'
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
