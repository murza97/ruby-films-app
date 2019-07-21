class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :avatar, :string
  end
end
