class AddPointValueToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :point_value, :integer
  end

  def self.down
    drop_table :tasks
  end
end
