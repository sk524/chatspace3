class AddTextToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :text, :group, :string
    add_index :users, :text, :group, unique: true
  end
end
