class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.string :author
      t.string :publisher
      t.date :publish_date
      t.text :memories_chapter
      t.integer :common_status_id, null: false, default: 1
      t.integer :book_category_id

      t.timestamps
    end
  end
end
