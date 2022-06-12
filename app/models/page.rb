class Page < ApplicationRecord
  include Visible

  # To check: Trailing 's'
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
