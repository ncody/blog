class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 4}
  validates :instructions, presence: true
  validates :ingredients, presence: true
end
