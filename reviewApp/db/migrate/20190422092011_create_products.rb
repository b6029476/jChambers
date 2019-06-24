class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :brand
      t.float :cost
      t.string :category
      t.date :date
      t.string :description
      t.attachment :image

      t.timestamps
    end
  end
end
