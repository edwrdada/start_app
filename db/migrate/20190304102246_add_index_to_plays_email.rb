class AddIndexToPlaysEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :plays, :email, unique: true
  end
end
