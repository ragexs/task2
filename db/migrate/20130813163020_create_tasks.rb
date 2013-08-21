class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :describe
      t.integer :todo_list_id
      t.integer :priority

      t.timestamps
    end
  end
end
