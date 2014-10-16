class RenameCusnaToCustomername < ActiveRecord::Migration
  def up
  	rename_column :fds, :cusna, :customername
  end

  def down
  	rename_column :fds, :customername, :cusna
  end
end
