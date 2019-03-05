class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :type
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
