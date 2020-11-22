class ChangeDateTypeInNotes < ActiveRecord::Migration[6.0]
  def change
    change_column :notes, :note_taken_on, :datetime
  end
end
