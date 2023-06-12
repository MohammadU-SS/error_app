class ErrorsFixColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :errors, :type, :error_type
  end
end
