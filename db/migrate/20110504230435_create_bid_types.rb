class CreateBidTypes < ActiveRecord::Migration
  def self.up
    create_table :bid_types do |t|
      t.string :abbreviation
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :bid_types
  end
end
