class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.0]
  def change
    change_table(:users) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid,      :null => false, :default => ""
      t.text   :tokens
    end

    add_index :users, [:uid, :provider],     unique: true
  end
end
