class Comment < ApplicationRecord
  include Visible

  # Sets up an active record association
  belongs_to :page
end
