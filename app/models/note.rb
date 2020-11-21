class Note < ApplicationRecord
  attr_accessor :tag

  belongs_to :user
  has_many :note_tags, dependent: :destroy
  has_many :tags,through: :note_tags

  validates :title, presence: true
  validates :content, presence: true
  validates :note_taken_on, presence: true
end
