class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :user, :review, presence: true
  validates :user_id, uniqueness: {scope: :review_id}
end
