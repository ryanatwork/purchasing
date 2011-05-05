class AddBidNumberToSolicitations < ActiveRecord::Migration
  def self.up
    add_column :solicitations, :bid_number, :string
  end

  def self.down
    remove_column :solicitations, :bid_number
  end
end
