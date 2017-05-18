class Image < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many   :comments, as: :commentable
end
