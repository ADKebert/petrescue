class CreateAdopters < ActiveRecord::Migration[5.0]
  def change
    create_table :adopters do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
