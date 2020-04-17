class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.date :date
      t.belongs_to :habit, null: false, foreign_key: true
      t.boolean :unmarked
      t.boolean :complete
      t.boolean :incomplete
      t.boolean :skipped

      t.timestamps
    end
  end
end
