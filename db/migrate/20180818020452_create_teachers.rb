class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.text :address
      t.string :subject
      t.string :description
      t.string :phone_number
      t.string :link_linkedin_profile
      
      t.timestamps
    end
  end
end
