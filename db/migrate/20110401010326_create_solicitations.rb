class CreateSolicitations < ActiveRecord::Migration
  def self.up
    create_table :solicitations do |t|
      t.integer :bid_type
      t.text :bid_description
      t.date :open_date
      t.date :closed_date
      t.integer :contact_id

      t.timestamps
    end
  end

  def self.down
    drop_table :solicitations
  end
end
