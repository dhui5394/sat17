class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers, id: false do |t|
      t.belongs_to :statements
      t.belongs_to :options
    end
  end
end
