class CreateFds < ActiveRecord::Migration
  def change
    create_table :fds do |t|
      t.string :cusna
      t.date :dob
      t.string :sex
      t.text :addr
      t.string :city
      t.integer :pin
      t.text :pan
      t.date :openedon
      t.float :depamt
      t.float :roi
      t.integer :noy
      

      t.timestamps
    end
  end
end
