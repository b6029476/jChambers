class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :ename
      t.string :etype
      t.string :location
      t.string :city
      t.float :price
      t.date :date
      t.time :time
      t.text :description

      t.timestamps
    end
  end
end
