class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :ename
      t.string :etype
      t.string :location
      t.string :city
      t.string :tickets
      t.date :edate
      t.time :etime
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end
