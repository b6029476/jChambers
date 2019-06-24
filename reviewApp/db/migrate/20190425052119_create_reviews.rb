class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :rating
      t.text :reviewtext
      t.date :reviewdate
      t.integer :userid
      t.attachment :image_file_path
      t.integer :product_id

      t.timestamps
    end
  end
end
