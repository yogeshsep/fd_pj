class Rechangedatatypeforint < ActiveRecord::Migration
  def up
  	change_column :fds, :int, :float
  end

  def down
  	change_column :fds, :int, :integer
  end
end
