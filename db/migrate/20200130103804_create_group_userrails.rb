class CreateGroupUserrails < ActiveRecord::Migration[5.0]
  def change
    create_table :group_userrails do |t|
      t.string :g
      t.string :model
      t.string :group

      t.timestamps
    end
  end
end
