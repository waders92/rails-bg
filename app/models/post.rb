class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :sections, dependent: :destroy
  has_many :images, dependent: :destroy

  def post_topics
    %w[Angular Rails JavaScript MongoDB Express Node]
  end

  def first_section
    self.sections.order('created_at ASC')
    return sections.first
  end

  def post_date
    created_at.strftime('%b %d, %Y')
  end

  def topic_image
    return unless topic

    topic[0] = topic[0].downcase
    topic + '.png'
  end
end
