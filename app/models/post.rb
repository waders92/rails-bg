class Post < ApplicationRecord
  belongs_to :user
  has_many :sections, dependent: :destroy

  def post_topics
    return ['Angular', 'Rails', 'JavaScript', 'MongoDB', 'ExpressJS', 'NodeJS']
  end
end
