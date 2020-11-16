class ListTag < ApplicationRecord
  belongs_to :tag
  belongs_to :list

  validates_uniqueness_of :list_id, scope: :tag_id
end
