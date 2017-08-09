class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         has_many :likes,dependent: :destroy
  mount_uploader :image, ImageUploader

  paginates_per 16

  has_many :liking_likes, foreign_key: "liker_id", class_name: "Like", dependent: :destroy
  has_many :likings, through: :liking_likes
    has_many :liker_likes, foreign_key: "liking_id", class_name: "Like", dependent: :destroy
  has_many :likers, through: :liker_likes

  def liking?(other_user)
    liking_likes.find_by(liking_id: other_user.id)
  end

  def like!(other_user)
    liking_likes.create!(liking_id: other_user.id)
  end

  def unlike!(other_user)
    liking_likes.find_by(liking_id: other_user.id).destroy
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    unless user
      user = User.new(
        uid:      auth.uid,
        provider: auth.provider,
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20],
        name:     auth.info.name
      )
      user.remote_image_url = auth.info.image.gsub('http://','https://')
      user.save
    end
    user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end