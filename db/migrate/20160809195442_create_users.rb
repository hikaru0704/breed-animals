class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :sex
      t.integer :age
      t.references :animal

      t.timestamps null: false
    end
  end
end
