class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :email
      t.string :address
      t.string :subject
      t.string :reason

      t.timestamps
    end
  end
end
