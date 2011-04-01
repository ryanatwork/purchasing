class BidTypeId < ActiveRecord::Migration
  def self.up
    change_table :solicitations do |t|
      t.rename :bid_type, :bid_type_id
    end
    
  end

  def self.down
  end
end
