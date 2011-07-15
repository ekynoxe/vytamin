class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title
      t.text :description
      t.datetime :startdate
      t.datetime :enddate
      t.integer :distance
      t.integer :sport_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
