class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :fname
      t.date :dob
      t.string :address
      t.string :city
      t.string :country
      t.attachment :image
      t.string :user_id

      t.timestamps
    end
  end
end
