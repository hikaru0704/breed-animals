class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :breed
      t.string :chronic_illness
      t.string :attend_the_hospital
      t.string :vaccine
      t.string :blood_test
      t.references :user
      t.references :animal_type

      t.timestamps null: false
      t.index [:animal_type_id, :created_at]
    end
  end
end
