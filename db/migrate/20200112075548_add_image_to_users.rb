class AddImageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :mwssage, :image, :string
    add_index :message, :image, unique: true
  end
end
