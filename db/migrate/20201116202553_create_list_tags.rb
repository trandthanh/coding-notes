class CreateListTags < ActiveRecord::Migration[6.0]
  def change
    create_table :list_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
