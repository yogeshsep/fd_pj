class AddMdToFds < ActiveRecord::Migration
  def change
    add_column :fds, :md, :date
  end
end
