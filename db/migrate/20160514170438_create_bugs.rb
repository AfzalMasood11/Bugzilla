class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :status
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :bugs, :users
  end
end
