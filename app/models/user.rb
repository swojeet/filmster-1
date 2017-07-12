class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true

  has_many :reviews

  mount_uploader :avatar, AvatarUploader

  def reviewed?(movie)
    self.reviews.where(movie_id: movie.id).exists? ? true : false
  end
end
