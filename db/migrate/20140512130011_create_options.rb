class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :statement_id
      t.string :option
      t.integer :order

      t.timestamps
    end
  end
end
