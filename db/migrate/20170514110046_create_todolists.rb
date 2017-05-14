class CreateTodolists < ActiveRecord::Migration[5.0]
  def change
    create_table :todolists do |t|
    	t.string :user_id,            null: false
    	t.string :name,               null: false, default: ""

       add_index :user_id

      t.timestamps
    end
  end
end
