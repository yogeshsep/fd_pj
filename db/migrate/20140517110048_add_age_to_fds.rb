class AddAgeToFds < ActiveRecord::Migration
  def change
    add_column :fds, :age, :integer
  end
end
