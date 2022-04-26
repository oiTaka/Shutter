class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.string :user_id, null: false
      t.string :blog_id, null: false

      t.timestamps
    end
  end
end
