class CreateTodolists < ActiveRecord::Migration[5.0]
  def change
    create_table :todolists do |t|
    	t.belongs_to :user,           null: false
    	t.string :name,               null: false, default: ""

      t.timestamps
    end
  end
end
