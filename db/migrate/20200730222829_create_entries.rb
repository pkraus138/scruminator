class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.text :yesterday
      t.text :today
      t.text :impediments
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
