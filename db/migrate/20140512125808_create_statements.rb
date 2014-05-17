class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :statement

      t.timestamps
    end
  end
end
