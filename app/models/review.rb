class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  delegate :username, to: :user,prefix: true
  delegate :title, :tmdb_id, to: :movie, prefix: true

  validates :user, :movie, presence: true

  has_many :upvotes, dependent: :destroy

  scope :recent, -> { order("created_at DESC").limit(5) }
end
