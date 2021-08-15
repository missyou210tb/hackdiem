class CreateSpecialized < ActiveRecord::Migration[6.1]
  def change
    create_table :specializeds do |t|
      t.string :name
      t.string :description
      t.date :founded_date
      t.references :faculties

      t.timestamps
    end
  end
end
