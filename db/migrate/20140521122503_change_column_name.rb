class ChangeColumnName < ActiveRecord::Migration
  def up
  	rename_column :fds, :int, :interest
  end

  def down
  	rename_column :fds, :interest, :int
  end
end
