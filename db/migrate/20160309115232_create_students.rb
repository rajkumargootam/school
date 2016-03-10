class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :section, index: true, foreign_key: true
      t.string :name
      t.string :email
      t.integer :rollno
      t.integer :gender
      t.string :bloodgroup

      t.timestamps null: false
    end
  end
end
