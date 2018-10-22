class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.text :main_image
      t.string :title

      t.timestamps
    end
  end
end
