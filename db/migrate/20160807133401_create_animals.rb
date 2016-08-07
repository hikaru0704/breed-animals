class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :sex
      t.string :age
      t.string :breed
      t.string :chronic_illness
      t.string :attend_the_hospital
      t.string :vaccine
      t.string :blood_test

      t.timestamps null: false
    end
  end
end
