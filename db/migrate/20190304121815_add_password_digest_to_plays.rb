class AddPasswordDigestToPlays < ActiveRecord::Migration[5.2]
  def change
    add_column :plays, :password_digest, :string
  end
end
