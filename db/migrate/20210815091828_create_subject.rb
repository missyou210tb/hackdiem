class CreateSubject < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :description
      t.integer :number_of_lessons

      t.timestamps
    end
  end
end
