class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :userid
      t.string :email
      t.string :password_digest
      t.date :registered

      t.timestamps
    end
  end
end
