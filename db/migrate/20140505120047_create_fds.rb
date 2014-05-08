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
      t.string :depamt
      t.float :roi
      t.date :noy

      t.timestamps
    end
  end
end
