class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destoroy
  
  validates :title, presence: true
  validates :body, presence: true

end
