class AddPictureToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :picture, :string
  end
end
