class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :sex
      t.integer :age
      t.refarences :animal

      t.timestamps null: false
    end
  end
end
