class CreateFrnds < ActiveRecord::Migration
  def self.up
    create_table :frnds do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.date :bd
      t.integer :mobile

      t.timestamps
    end
  end

  def self.down
    drop_table :frnds
  end
end
