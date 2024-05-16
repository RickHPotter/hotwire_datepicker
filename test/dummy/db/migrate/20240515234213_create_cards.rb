class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.date :closing_date
      t.date :due_date

      t.timestamps
    end
  end
end
