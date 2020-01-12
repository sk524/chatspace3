class CreateGroupUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_users do |t|
      t.string :name, :group, null: false
      t.timestamps null: false
    end
  end
end
