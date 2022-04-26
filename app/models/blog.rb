class Blog < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :blog_tags, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :users
  belongs_to :cameras
  belongs_to :lenses
end
