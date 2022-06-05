class Comment < ApplicationRecord
  # Sets up an active record association
  belongs_to :page
end
