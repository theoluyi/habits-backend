class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.string :name
      t.boolean :archived
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :m
      t.boolean :t
      t.boolean :w
      t.boolean :r
      t.boolean :f
      t.boolean :s
      t.boolean :u

      t.timestamps
    end
  end
end
