class Note < ApplicationRecord
  belongs_to :user
  has_many :note_tags, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :note_taken_on, presence: true
end
