class CreateBidtypes < ActiveRecord::Migration
  def self.up
    create_table :bidtypes do |t|
      t.text :abbreviation
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :bidtypes
  end
end
