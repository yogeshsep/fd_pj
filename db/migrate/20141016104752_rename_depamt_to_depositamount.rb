class RenameDepamtToDepositamount < ActiveRecord::Migration
  def up
  	rename_column :fds, :depamt, :depositamount
  end

  def down
  	rename_column :fds, :depositamount, :depamt
  end
end
