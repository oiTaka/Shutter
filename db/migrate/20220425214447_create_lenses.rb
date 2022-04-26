class CreateLenses < ActiveRecord::Migration[6.1]
  def change
    create_table :lenses do |t|
      t.integer :blog_id, null: false
      t.string :lens_name

      t.timestamps
    end
  end
end
