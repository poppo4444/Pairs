class Like < ApplicationRecord
  belongs_to :liking, class_name: "User"
  belongs_to :liker, class_name: "User"
  validates :liking_id, presence: true
  validates :liker_id, presence:true
end
