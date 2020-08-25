class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :sections, dependent: :destroy

  def post_topics
    %w[Angular Rails JavaScript MongoDB Express Node]
  end

  def first_section_content
    sections[0].content
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
