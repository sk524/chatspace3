class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name, :text, null: false
      t.timestamps null: false
    end
  end
end
