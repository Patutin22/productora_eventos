class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.date :date
      t.string :place
      t.integer :assistants, default:0
      t.integer :duration, defaul:0
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
