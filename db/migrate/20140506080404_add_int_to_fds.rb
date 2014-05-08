class AddIntToFds < ActiveRecord::Migration
  def change
    add_column :fds, :int, :string
  end
end
