class AddClumnCheckedForTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :checked, :string
  end
end
