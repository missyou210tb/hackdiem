class CreateSpeacializedSubject < ActiveRecord::Migration[6.1]
  def change
    create_table :speacialized_subjects do |t|
      t.references :speacializeds
      t.references :subjects
      t.integer :maximum_number_of_students

      t.timestamps
    end
  end
end
