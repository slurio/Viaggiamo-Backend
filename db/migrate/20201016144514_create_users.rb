class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :bio, default: "Add some information about yourself!"
      t.integer :spanish, default: 0
      t.integer :german, default: 0
      t.integer :french, default: 0
      t.integer :italian, default: 0

      t.timestamps
    end
  end
end
