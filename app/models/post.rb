class Post < ApplicationRecord
  belongs_to :user
  has_many :sections, dependent: :destroy
end
