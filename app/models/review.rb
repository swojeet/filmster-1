class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  delegate :username, to: :user,prefix: true

  validates :user, :movie, presence: true
end
