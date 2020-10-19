class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :language
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
