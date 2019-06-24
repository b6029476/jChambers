class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :userid
      t.string :email
      t.string :password_digest
      t.string :name
      t.date :dob
      t.string :address
      t.string :city
      t.string :country
      t.attachment :image

      t.timestamps
    end
  end
end
