class CreateSizes < ActiveRecord::Migration
  def self.up
    create_table :sizes do |t|
	t.integer :id
	t.string :sizename
      t.timestamps
    end
  end

  def self.down
    drop_table :sizes
  end
end
