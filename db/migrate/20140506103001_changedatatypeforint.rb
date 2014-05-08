class Changedatatypeforint < ActiveRecord::Migration
 def up
  	change_column :fds, :int, :integer
  end

  def down
  	change_column :fds, :int, :string
  end
end
