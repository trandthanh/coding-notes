class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :content
      t.date :starts_on
      t.date :ends_on
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
