class Rechangedatatypefordepamt < ActiveRecord::Migration
  def up
  	change_column :fds, :depamt, :float
  end

  def down
  	change_column :fds, :depamt, :integer
  end
end
