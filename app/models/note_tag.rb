class NoteTag < ApplicationRecord
  belongs_to :tag
  belongs_to :note

  validates :tag, uniqueness: { scope: :note }
end
