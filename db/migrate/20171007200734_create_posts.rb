class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.text :cook_time
      t.text :original_recipe

      t.timestamps
    end
  end
end

