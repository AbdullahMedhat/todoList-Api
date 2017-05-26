class AddClumnCheckedForTodos < ActiveRecord::Migration[5.0]
  change_table(:todos) do |t| 
    t.string :checked 
  end
end
