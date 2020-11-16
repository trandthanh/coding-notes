class List < ApplicationRecord
  belongs_to :user
  has_many :list_tags, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :starts_on, presence: true
  validates :ends_on, presence: true
  validate :ends_on_after_starts_on?

  def ends_on_after_starts_on?
    if starts_on > ends_on
      errors.add(:ends_on, 'must be after the starts_on date')
    end
  end
end
