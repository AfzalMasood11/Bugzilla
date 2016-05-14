class CreateBugsAssignees < ActiveRecord::Migration
  def change
    create_table :bugs_assignees do |t|
      t.references :user, index: true
      t.references :bug, index: true

      t.timestamps null: false
    end
    add_foreign_key :bugs_assignees, :users
    add_foreign_key :bugs_assignees, :bugs
  end
end
