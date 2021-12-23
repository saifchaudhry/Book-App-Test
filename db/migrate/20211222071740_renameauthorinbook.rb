class Renameauthorinbook < ActiveRecord::Migration[6.1]
  def change
    rename_column(:books, :authors_id, :author_id)
  end
end
