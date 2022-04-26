class BlogTag < ApplicationRecord
  belongs_to :blogs
  belongs_to :tags
end
