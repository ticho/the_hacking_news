class Comment < ApplicationRecord
  belongs_to :comment, optional: true
  belongs_to :link, optional: true
  belongs_to :user
  has_many :comments
end
