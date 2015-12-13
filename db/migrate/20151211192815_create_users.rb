class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :encrypted_password
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
