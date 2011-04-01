class Bidtype < ActiveRecord::Migration
  def self.up
    change_table :bidtypes do |t|
          t.change :abbreviation, :string
    end
  end

  def self.down
  end
end
