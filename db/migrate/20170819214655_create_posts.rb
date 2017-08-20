class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :text
      t.integer :fav

      t.timestamps
    end
  end
end
