class RenameDobToDateofbirth < ActiveRecord::Migration
  def up
  	rename_column :fds, :dob, :dateofbirth
  end

  def down
  	rename_column :fds, :dateofbirth, :dob
  end
end
