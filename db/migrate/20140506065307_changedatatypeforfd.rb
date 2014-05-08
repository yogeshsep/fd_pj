class Changedatatypeforfd < ActiveRecord::Migration
  def up
  	change_column :fds, :noy, :integer
  end

  def down
  	change_column :fds, :noy, :date
  end
end
