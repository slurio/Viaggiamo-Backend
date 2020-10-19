class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :description
      t.string :language
      t.string :voice
      t.string :content
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
