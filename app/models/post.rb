class Post < ApplicationRecord
  belongs_to :user
  has_many :sections, dependent: :destroy

  def post_topics
    return ['Angular', 'Rails', 'JavaScript', 'MongoDB', 'ExpressJS', 'NodeJS']
  end

  def first_section_content
    return self.sections[0].content
  end

  def post_date
    created_at.strftime('%b %d, %Y')
  end
end
