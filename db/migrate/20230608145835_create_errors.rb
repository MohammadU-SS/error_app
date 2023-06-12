class CreateErrors < ActiveRecord::Migration[7.0]
  def change
    create_table :errors do |t|
      t.string :type
      t.integer :severity
      t.string :description

      t.timestamps
    end
  end
end
