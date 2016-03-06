class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :klass, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
