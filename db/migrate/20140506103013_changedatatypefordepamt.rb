class Changedatatypefordepamt < ActiveRecord::Migration
  def up
  	change_column :fds, :depamt, :integer
  end

  def down
  	change_column :fds, :depamt, :string
  end
end
