class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor
      t.text :description
      t.text :units
      t.string :duration

      t.timestamps
    end
  end
end
