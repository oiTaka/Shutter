class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.integer :user_id, null: false
      t.integer :camera_id, null: false
      t.integer :lens_id, null: false
      t.string :blog_img, null: false
      t.text :post, null: false

      t.timestamps
    end
  end
end
