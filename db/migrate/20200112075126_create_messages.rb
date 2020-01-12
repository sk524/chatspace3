class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name, :text, :image, null: false
      t.timestamps null: false
    end
  end
end
