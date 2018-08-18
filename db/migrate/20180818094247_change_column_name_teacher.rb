class ChangeColumnNameTeacher < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :teachers, :password, :password_digest
  end

  def self.down
    rename_column :teachers, :password_digest, :password
  end
end
