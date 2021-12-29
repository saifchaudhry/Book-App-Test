class AddUsersToBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string "title"
      t.text "description"
      t.boolean "publish"
      t.timestamps null: false
    end
    add_reference :books, :authors, foreign_key: true
  end
end
