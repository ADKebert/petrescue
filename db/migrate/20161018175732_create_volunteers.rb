class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email
      t.integer :activity

      t.timestamps
    end
  end
end
