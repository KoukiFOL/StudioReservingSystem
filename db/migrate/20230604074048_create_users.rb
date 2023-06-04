class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :name
      t.integer :number
      t.string  :password
      t.string :admin
      t.text :info
      t.date :birthday
      t.timestamps
    end
  end
end
