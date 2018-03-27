class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.int :phone_number
      t.string :email

      t.timestamps
    end
  end
end