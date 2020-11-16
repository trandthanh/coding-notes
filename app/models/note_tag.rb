class NoteTag < ApplicationRecord
  belongs_to :tag
  belongs_to :note

  validates_uniqueness_of :note_id, scope: :tag_id
end
