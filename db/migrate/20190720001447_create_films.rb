class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :body
      t.numeric :year
      t.numeric :rating
      t.text :text
      t.file :picture
      t.string :country
      t.string :kind

      t.timestamps
    end
  end
end
