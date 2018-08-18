class ChangeColumnNameStudent < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :students, :password, :password_digest
  end

  def self.down
    rename_column :students, :password_digest, :password
  end
end
