class CreateCameras < ActiveRecord::Migration[6.1]
  def change
    create_table :cameras do |t|
      t.integer :blog_id, null: false
      t.string :camera_name

      t.timestamps
    end
  end
end
