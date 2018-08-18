class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.text :address
      t.string :school_level
      t.string :phone_number

      t.timestamps
    end
  end
end
