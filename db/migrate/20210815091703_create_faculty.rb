class CreateFaculty < ActiveRecord::Migration[6.1]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :description
      t.date :founded_date

      t.timestamps
    end
  end
end
